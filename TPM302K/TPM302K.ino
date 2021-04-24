#include <stdio.h>

#define SDA      A4
#define SCL      A5
#define D400RST  3
#define IM920RST 4
#define ETHSS    10
#define ETHMOSI  11
#define ETHMISO  12
#define ETHSCK   13

void setup(void) {
  Serial.begin(115200);
  pinMode(A0,OUTPUT);
  pinMode(A1,OUTPUT);
  pinMode(A2,OUTPUT);
  pinMode(A3,OUTPUT);
  pinMode(SDA,OUTPUT); /* I2C SDA */
  pinMode(SCL,OUTPUT); /* I2C SCL */
  pinMode(D400RST,OUTPUT); /* D400 RESET */
  pinMode(IM920RST,INPUT); /* IM920 RESET SW */
  pinMode(ETHSS,OUTPUT);
  pinMode(ETHMOSI,OUTPUT);
  pinMode(ETHMISO,OUTPUT);
  pinMode(ETHSCK,OUTPUT);
  digitalWrite(A0,HIGH);
  digitalWrite(A1,HIGH);
  digitalWrite(A2,HIGH);
  digitalWrite(A3,HIGH);
  digitalWrite(SDA,HIGH); /* I2C SDA */
  digitalWrite(SCL,HIGH); /* I2C SCL */
  digitalWrite(D400RST,HIGH); /* D400 RESET */
  digitalWrite(ETHSS,HIGH);
  digitalWrite(ETHMOSI,HIGH);
  digitalWrite(ETHMISO,HIGH);
  digitalWrite(ETHSCK,HIGH);
  Serial.println("INIT DONE");
}

void loop(void) {
  int i;
  Serial.println("D400 RESET TEST - BLINK D400 RESET PIN");
  for(i=0;i<5;i++) {
    digitalWrite(D400RST,LOW);
    delay(500);
    digitalWrite(D400RST,HIGH);
    delay(500);
  }
  Serial.println("I2C TEST - BLINK SDA 5TIMES");
  for(i=0;i<5;i++) {
    digitalWrite(SDA,LOW);
    delay(500);
    digitalWrite(SDA,HIGH);
    delay(500);
  }
  Serial.println("I2C TEST - BLINK SCL 5TIMES");
  for(i=0;i<5;i++) {
    digitalWrite(SCL,LOW);
    delay(500);
    digitalWrite(SCL,HIGH);
    delay(500);
  }
  Serial.println("ANALOG PORT TEST - BLINK A0,A1,A2,A3 CYCLIC 5TIMES");
  for(i=0;i<5;i++) {
    digitalWrite(A0,LOW);
    delay(500);
    digitalWrite(A0,HIGH);
    digitalWrite(A1,LOW);
    delay(500);
    digitalWrite(A1,HIGH);
    digitalWrite(A2,LOW);
    delay(500);
    digitalWrite(A2,HIGH);
    digitalWrite(A3,LOW);
    delay(500);
    digitalWrite(A3,HIGH);
    delay(500);
  }
  Serial.println("ETHERNET W5500 I/F TEST - BLINK MISO,MOSI,SS,SCK CYCLIC 5TIMES");
  for(i=0;i<5;i++) {
    digitalWrite(ETHMISO,LOW);
    delay(500);
    digitalWrite(ETHMISO,HIGH);
    digitalWrite(ETHMOSI,LOW);
    delay(500);
    digitalWrite(ETHMOSI,HIGH);
    digitalWrite(ETHSS,LOW);
    delay(500);
    digitalWrite(ETHSS,HIGH);
    digitalWrite(ETHSCK,LOW);
    delay(500);
    digitalWrite(ETHSCK,HIGH);
    delay(500);
  }
}
