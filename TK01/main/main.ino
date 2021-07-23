///////////////////////////////////////////////////////////////////
// M302K-TK01
//  MIT License
//  Copyright (c) 2021 Masafumi Horimoto
//  Release on 05-June-2021
//  https://github.com/mhorimoto/M302.git
///////////////////////////////////////////////////////////////////


#include <stdio.h>
#include <SPI.h>
#include <Ethernet2.h>
#include <EthernetUdp2.h> // UDP library from: bjoern@cs.stanford.edu 12/30/2008
#include <avr/pgmspace.h>
#include <avr/wdt.h>
#include <EEPROM.h>
#include <LiquidCrystal_I2C.h>
#include <Wire.h>
#include <Adafruit_I2CDevice.h>
#include <Adafruit_I2CRegister.h>
#include "Adafruit_SHT31.h"

uint8_t mcusr_mirror __attribute__ ((section (".noinit")));
void get_mcusr(void)	 \
  __attribute__((naked)) \
  __attribute__((section(".init3")));
void get_mcusr(void) {
  mcusr_mirror = MCUSR;
  MCUSR = 0;
  wdt_disable();
}

#define  UECS_PORT  16520
#define  pUECSID      0
#define  pMACADDR     6
#define  pINAIRTEMP  16
#define  pINAIRHUMID 33
#define  pINILLUMI   51
#define  pCND        0x43

const char VERSION[16] PROGMEM = "\xbd\xcf\xc9\xb3\xbc\xde\xad\xb8 V020";

char uecsid[6], uecstext[180],strIP[16],linebuf[65];
byte lineptr = 0;
int  sht31addr = 0x44;  // Default SHT31 I2C Address
bool enableHeater = false;
char api[] = "api.smart-agri.jp";

/////////////////////////////////////
// Hardware Define
/////////////////////////////////////

LiquidCrystal_I2C lcd(0x27,16,2);  // set the LCD address to 0x27 for a 16 chars and 2 line display
char lcdtext[4][17];

Adafruit_SHT31 sht31 = Adafruit_SHT31();

byte macaddr[6];
IPAddress localIP,broadcastIP,subnetmaskIP,remoteIP;
EthernetUDP Udp16520; //,Udp16529;
EthernetClient EthClient; // GIS Client

volatile int period1sec = 0;
volatile int period10sec = 0;
volatile int period60sec = 0;

void setup(void) {
  int i;
  const char *ids PROGMEM = "%s:%02X%02X%02X%02X%02X%02X";
  extern void lcdout(int,int,int);
  
  lcd.init();
  lcd.backlight();
  configure_wdt();
  pinMode(2,INPUT_PULLUP);
  EEPROM.get(pUECSID,uecsid);
  EEPROM.get(pMACADDR,macaddr);
  for(i=0;i<16;i++) {
    lcdtext[0][i] = pgm_read_byte(&(VERSION[i]));
  }
  lcdtext[0][i] = 0;
  sprintf(lcdtext[1],ids,"ID",
	  uecsid[0],uecsid[1],uecsid[2],uecsid[3],uecsid[4],uecsid[5]);
  lcdout(0,1,1);
  Serial.begin(115200);
  Serial.println(lcdtext[0]);
  Serial.println("ST1"); // SHT31 test
  if (! sht31.begin(sht31addr)) {   // Set to 0x45 for alternate i2c addr
    Serial.println(F("ET1"));       // NO SHT31 at 0x44
    //    sprintf(lcdtext[3],"NO SHT31 AT 0x44 ");
    //    lcdout(0,3,0);
    for(i=0;i<10;i++) {
      delay(100);
      if (sht31.begin(sht31addr)) {
	Serial.println(F("ST2"))    // SHT31 at 0x44
	//	sprintf(lcdtext[3],"SHT31 AT 0x44   ");
	//	lcdout(0,3,0);
	break;
      }
    }
    if (i==10) {
      Serial.println(F("ET2")); // NOT FOUND SHT31 SKIP
	  sprintf(lcdtext[3],"NO SHT31 SKIP   ");
	  lcdout(0,3,0);
	  sht31addr = 0;
	}
      }
    }
  }

  //Serial.print(F("HEAT State: "));
  //  if (sht31.isHeaterEnabled())
  //    Serial.println("ENABLED");
  //  else
  //    Serial.println("DISABLED");

  delay(500);
  Ethernet.init(10);
  if (Ethernet.begin(macaddr)==0) {
    sprintf(lcdtext[1],"NFL");
  } else {
    localIP = Ethernet.localIP();
    subnetmaskIP = Ethernet.subnetMask();
    for(i=0;i<4;i++) {
      broadcastIP[i] = ~subnetmaskIP[i]|localIP[i];
    }
    sprintf(lcdtext[2],ids,"HW",
	    macaddr[0],macaddr[1],macaddr[2],macaddr[3],macaddr[4],macaddr[5]);
    sprintf(strIP,"%d.%d.%d.%d",localIP[0],localIP[1],localIP[2],localIP[3]);
    sprintf(lcdtext[3],"%s",strIP);
    sprintf(lcdtext[0],"%d.%d.%d.%d",broadcastIP[0],broadcastIP[1],broadcastIP[2],broadcastIP[3]);
    lcdout(2,3,1);
    Udp16520.begin(16520);
  }
  wdt_reset();
  delay(1000);
  //
  // Setup Timer1 Interrupt
  //
  TCCR1A  = 0;
  TCCR1B  = 0;
  TCCR1B |= (1 << WGM12) | (1 << CS12) | (1 << CS10);  //CTCmode //prescaler to 1024
  OCR1A   = 15625-1;
  TIMSK1 |= (1 << OCIE1A);
  //
  // Opening Messages
  //
  Serial.println(lcdtext[1]);
  Serial.println(lcdtext[2]);
  Serial.println(lcdtext[3]);
  Serial.println(lcdtext[0]);
}

/////////////////////////////////
// Reset Function goto Address 0
/////////////////////////////////
void(*resetFunc)(void) = 0;

/////////////////////////////////
void loop() {
  int i,ia,ta,tb;
  byte room,region,priority,interval;
  int  order;
  int  inchar ;
  float ther,humi;
  static byte s = 0;
  char name[10],dname[11],val[6];
  extern void lcdout(int,int,int);
  extern int setParam(char *);
  extern void dumpLowCore(void);
  
  const char *xmlDT PROGMEM = "<?xml version=\"1.0\"?><UECS ver=\"1.00-E10\"><DATA type=\"%s.mIC\" room=\"%d\" region=\"%d\" order=\"%d\" priority=\"%d\">%s</DATA><IP>%s</IP></UECS>";
  const char *thdisp PROGMEM = "%3d %3d %3d %3d";
  const char *ids PROGMEM = "%s:%02X%02X%02X%02X%02X%02X";
  
  if (EthClient.available()) {
    char c = EthClient.read();
    Serial.write(c);
  }

   wdt_reset();
//   //////////////////////////////////////////////////////////////
//   // Green Button Operations
//   //////////////////////////////////////////////////////////////
//   if ( digitalRead(2) == LOW ) {
//     if ( s == 0 ) {
//       s = 1;
//       for(i=0;i<16;i++) {
// 	lcdtext[0][i] = pgm_read_byte(&(VERSION[i]));
//       }
//       lcdtext[0][i] = 0;
//       sprintf(lcdtext[1],ids,"ID",
// 	      uecsid[0],uecsid[1],uecsid[2],uecsid[3],uecsid[4],uecsid[5]);
//     } else {
//       s = 0;
//       sprintf(lcdtext[0],ids,"HW",
// 	      macaddr[0],macaddr[1],macaddr[2],macaddr[3],macaddr[4],macaddr[5]);
//       sprintf(strIP,"%d.%d.%d.%d",localIP[0],localIP[1],localIP[2],localIP[3]);
//       sprintf(lcdtext[1],"%s",strIP);
//     }
//     lcdout(0,1,1);
//     delay(150);
//   }
//   //////////////////////////////////////////////////////////////
//   if ( Serial.available() > 0 ) {
//     inchar = Serial.read();
//     if (( inchar == 0x13 )||( inchar == 0x0a)||( lineptr > 63)) {
//       if ( !strcmp(linebuf,"d") ) {
// 	dumpLowCore();
//       } else if ( !strncmp(linebuf,"s ",2 )) {
// 	if ( setParam(linebuf) != 0 ) {
// 	  Serial.println(F("BAD"));
// 	} else {
// 	  Serial.println(F("OK"));
// 	}
//       } else if ( !strcmp(linebuf,"reset" )) {
// 	resetFunc();
//       } else {
// 	Serial.print(linebuf);
// 	Serial.println(F(" ?"));
//       }
//       lineptr = 0;
//     } else {
//       linebuf[lineptr] = (char)inchar;
//       lineptr++;
//     }
//     linebuf[lineptr] = (char)NULL;
//   }
  // 10 sec interval
  if (period10sec==1) {
    wdt_reset();
    period10sec = 0;
    if (sht31addr>0) {
      ther = sht31.readTemperature();
      humi = sht31.readHumidity();
      ia = pINAIRTEMP;
      ta = (int)ther;
      tb = (int)((ther-ta)*100);
      sprintf(val,"%d.%02d",ta,tb);
      uecsSendData(ia,xmlDT,val);
      ia = pINAIRHUMID;
      sprintf(val,"%d",(int)humi);
      uecsSendData(ia,xmlDT,val);
    }
    gisSendData(ia,val);
  }
  // 1 min interval
  if (period60sec==1) {
    wdt_reset();
    period60sec = 0;
  }
  // 1 sec interval
  if (period1sec==1) {
    period1sec = 0;
    ia = pCND;
    uecsSendData(ia,xmlDT,"0");
  }
  wdt_reset();
}

ISR(TIMER1_COMPA_vect) {
  static byte cnt10,cnt60;
  cnt10++;
  cnt60++;
  period1sec = 1;
  if (cnt10 >= 10) {
    cnt10 = 0;
    period10sec = 1;
  }
  if (cnt60 >= 60) {
    cnt60 = 0;
    period60sec = 1;
  }
}


void configure_wdt(void) {
  cli();                           // disable interrupts for changing the registers
  MCUSR = 0;                       // reset status register flags
                                   // Put timer in interrupt-only mode:
  WDTCSR |= 0b00011000;            // Set WDCE (5th from left) and WDE (4th from left) to enter config mode,
                                   // using bitwise OR assignment (leaves other bits unchanged).
  WDTCSR =  0b00001000 | 0b100001; // clr WDIE: interrupt enabled
                                   // set WDE: reset disabled
                                   // and set delay interval (right side of bar) to 8 seconds
  sei();                           // re-enable interrupts
                                   // reminder of the definitions for the time before firing
                                   // delay interval patterns:
                                   //  16 ms:     0b000000
                                   //  500 ms:    0b000101
                                   //  1 second:  0b000110
                                   //  2 seconds: 0b000111
                                   //  4 seconds: 0b100000
                                   //  8 seconds: 0b100001
}

void uecsSendData(int a,char *xmlDT,char *val) {
  byte room,region,priority,interval;
  int  order,i;
  char name[10],dname[11]; // ,val[6];
  EEPROM.get(a+0x01,room);
  EEPROM.get(a+0x02,region);
  EEPROM.get(a+0x03,order);
  EEPROM.get(a+0x05,priority);
  EEPROM.get(a+0x06,interval);
  EEPROM.get(a+0x07,name);
  for(i=0;i<10;i++) {
    dname[i] = name[i];
    if (name[i]==NULL) break;
  }
  dname[i] = NULL;
  sprintf(uecstext,xmlDT,dname,room,region,order,priority,val,strIP);
  Udp16520.beginPacket(broadcastIP,16520);
  Udp16520.write(uecstext);
  Udp16520.endPacket();
}

void gisSendData(int a,char *val) {
  EthClient.stop();
  if (EthClient.connect(api,80)) {
    EthClient.println("GET /b.html HTTP/1.1");
    EthClient.println("Host: api.smart-agri.jp");
    EthClient.println("User-Agent: arduino");
    EthClient.println("Connection: close");
    EthClient.println();
  } else {
    Serial.println("connection failed");
  }
}
