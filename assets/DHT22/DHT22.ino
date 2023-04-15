#include <LiquidCrystal.h>//Kb thư viện
LiquidCrystal lcd(13, 12, 11, 10, 9, 8);
//khai báo địa chỉ
int BT = A1;
int QUAT = 5;
int MS = 6;
long ADC_BT, ADC_LM35, T_d, T_t;//kb biến
///////////////////khai báo thư viện DHT22
#include "DHT.h"
#define DHTPIN 2//DHT kết nối chân số 2 của ARDUINO
#define DHTTYPE DHT22
DHT dht(DHTPIN, DHTTYPE);
void setup() {
  pinMode(QUAT,OUTPUT);//chọn IO
  pinMode(MS,OUTPUT);
  lcd.begin(16,2);
  lcd.setCursor(0,0);//dòng trên
  lcd.print("T_d:   , T_t:   ");
  lcd.setCursor(0,1);//dòng dưới
  lcd.print("QUAT:   ,MS:    ");
  dht.begin();//khởi tạo cho DHT
  delay(2000);
}
void loop() {
  //delay(2000);
  ADC_BT = analogRead(BT);//đọc ADC bt
  T_d = (ADC_BT*150)/1023;
  lcd.setCursor(4,0);
  lcd.print(T_d);//hiển thị T_d
  if(T_d<100)lcd.print(" ");
  
//  ADC_LM35 = analogRead(LM35);
//  T_t = (ADC_LM35*150)/307;
  float t = dht.readTemperature();
  T_t = t;//int(t);//gán vào T_t
  lcd.setCursor(13,0);
  lcd.print(T_t);//hiển thị T_t
  if(T_t<100)lcd.print(" ");    
  if(T_d>T_t)
  {
    digitalWrite(MS,HIGH);//bật MS
    digitalWrite(QUAT,LOW);//tắt Quat
    lcd.setCursor(0,1);
    lcd.print("QUAT:OFF,MS:ON ");
  }
  if(T_d<T_t)
  {
    digitalWrite(QUAT,HIGH);//bật Quạt
    digitalWrite(MS,LOW);//Tắt MS
    lcd.setCursor(0,1);
    lcd.print("QUAT:ON ,MS:OFF");
  }
  if(T_d==T_t)//so sánh ==
  {
    digitalWrite(MS,LOW);//tắt MS
    digitalWrite(QUAT,LOW);//tắt Quạt
    lcd.setCursor(0,1);
    lcd.print("QUAT,OFF,MS:OFF");
  }
}
