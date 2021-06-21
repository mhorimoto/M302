///////////////////////////////////////////////////////
// -*- mode : C++ -*-
// EEPROM editor for M302K TK01
//
//[概要]
//  スマ農塾で使用するM302K TK01のEEPROM領域の
//                                初期化を行うプログラム
//
///////////////////////////////////////////////////////

#include <stdio.h>
#include <EEPROM.h>

void setup(void) {
  unsigned int i,j,r,a,u;
  byte t;
  char c,name[8],z[4];
  byte uecsid[6]={0x10,0x10,0x0c,0x00,0x00,0x0A},uecsrd[6];
  byte macadd[6]={0x02,0xa2,0x73,0x0A,0xff,0xff};
  byte data[] ={
    'T',1,1,1,0,15,10,'I','n','A','i','r','T','e','m','p',0,
    'H',1,1,1,0,15,10,'I','n','A','i','r','H','u','m','i','d',0,
    'I',1,1,1,0,15,10,'I','n','I','l','l','u','m','i',0,
    'c',1,1,1,0,29,1, 0,'c','n','d',0
  };
  Serial.begin(115200);
  Serial.println("EEPROM SETTING for TK01 VER 0.01");
  EEPROM.get(0x0,uecsrd);
  for(i=0;i<6;i++) {
    if (uecsrd[i]!=uecsid[i]) {
      r = 1;  // 書き込む
      break;
    } else {
      r = 0;  // 書き込まない
    }
  }
  if (r==0) { // 書き込み済ならば表示だけを行って終了
    Serial.println("FINE DID");
    Serial.println("HEXDATA:");
    for(j=0;j<5;j++) {
      sprintf(z,"0x%03X:",j*0x10);
      Serial.print(z);
      for(i=0;i<16;i++) {
	sprintf(z,"%02X",EEPROM.read(i+(j*0x10)));
	Serial.print(z);
	if (i<15) Serial.print(",");
      }
      Serial.println();
    }
    Serial.print("Are You modify this ? ");
    u = 0;
    while(u==0) {
      if (Serial.available()>0) {
	u = Serial.read();
	if (u!='y') {
	  Serial.println();
	  Serial.println("END");
	  Serial.end();
	  while(1) {
	    u = 0;
	  }
	}
      }
    }
  }
  EEPROM.put(0x0,uecsid);
  Serial.println("WRITE DONE");
  Serial.print("UECSID:");
  for(i=0;i<6;i++) {
    Serial.print(EEPROM.read(i),HEX);
    Serial.print(",");
  }
  Serial.println("");
  Serial.print("ENTER SERIAL NUMBER:");
  r = 0;
  j = 0;
  while(r!=0x0d) {
    if (Serial.available()>0) {
      r =Serial.read();
      if ((r>=0x30)&&(r<=0x39)) {
	r -= 0x30;
	Serial.print(r,DEC);
	j *= 10;
	j += r;
      }
    }
  }
  Serial.println("");
  Serial.print("DATA:");Serial.println(j,DEC);
  t = (j >> 8) & 0xff;
  macadd[4] = t;
  macadd[5] = (byte)(j & 0xff);
  Serial.print("MAC ADDRESS=");
  for(i=0;i<6;i++) {
    Serial.print(macadd[i],HEX);
    if (i<5) Serial.print(":");
  }
  Serial.println(); 
  EEPROM.put(0x6,macadd);
  Serial.print("MAC=");
  for(i=0;i<6;i++) {
    Serial.print(EEPROM.read(6+i),HEX);
    if (i<5) Serial.print(":");
  }
  data[3]  = macadd[5];
  data[4]  = macadd[4];
  data[20] = macadd[5];
  data[21] = macadd[4];
  data[38] = macadd[5];
  data[39] = macadd[4];
  data[54] = macadd[5];
  data[55] = macadd[4];
  Serial.println("");
  EEPROM.put(0x10,data);
  Serial.println("DATA WROTE");
  
  Serial.println("HEXDATA:");
  for(j=0;j<5;j++) {
    for(i=0;i<16;i++) {
      Serial.print(EEPROM.read(i+(j*0x10)),HEX);
      if (i<15) Serial.print(",");
    }
    Serial.println();
  }
  Serial.end();
}


void loop(void) {
}
