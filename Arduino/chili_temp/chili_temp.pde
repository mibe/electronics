#include <OneWire.h>
#include <DallasTemperature.h>
#include <SPI.h>
#include <Ethernet.h>
#include <SoftwareSerial.h>

byte mac[] = {  0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };
byte ip[] = { 192,168,1,99 };
byte subnet[] = { 255,255,255,0 };
byte gateway[] = { 192,168,1,2 };
byte server[] = { 80,67,28,163 };

// Pins
// 2 = DS1820
#define P_DS1820 2
#define P_LCD_TX 10
#define P_LCD_DUMMY 11

// 1-Wire-Bus instanzieren
OneWire oneWire(P_DS1820);

// Instanzieren der Dallas-Sensoren
DallasTemperature sensors(&oneWire);
SoftwareSerial mySerial(P_LCD_DUMMY, P_LCD_TX); // RX, TX
int ESC = 0x1B;
Client client(server, 80);

void setup(void)
{
  //  Ethernet.begin(mac, ip, gateway, subnet);
  Serial.begin(9600);

  pinMode(P_LCD_TX, OUTPUT);
  // set the data rate for the SoftwareSerial port
  mySerial.begin(9600);

  lcd_reset();
  lcd_cursor_form(0);

  delay(2000);

  // Start der Sensorübertragung
  sensors.begin();
}

float get_temp1(void)
{
  // Temperaturen abfragen
  sensors.requestTemperatures();
  // Sensor 0
  float tempC1 = sensors.getTempCByIndex(0);
  return tempC1;
}

void loop(void)
{ 
  float temp1 = get_temp1();
  Serial.println(temp1);

  if (temp1 == -127 || temp1 == 85)
    Serial.println("sensor error");
  else
  {
    Serial.print("Temp: ");
    Serial.println(temp1);
    lcd_print(temp1);
    //send_to_web(temp1);
  }

  delay(10000);
}

void send_to_web(float temp1)
{
  if (client.connect())
  {
    client.print("GET /add.php?temp1=");
    client.print(temp1);
    client.println(" HTTP/1.1");
    client.println("Host: chili.michis-pla.net");
    client.println("User-Agent: Arduino");
    client.println();
    delay(500);
    client.stop();
    Serial.println("sent beacon");
  }
  else
    Serial.println("connect error");  
}

void lcd_reset(void)
{
  mySerial.print(ESC, BYTE);
  mySerial.print('R');
  delay(500);
}

void lcd_print(float temp1)
{
  char tempStr[5];
  dtostrf(temp1, 5, 2, tempStr);
  
  mySerial.print(0x0C, BYTE);
  mySerial.print("Temperatur 1: ");
  mySerial.print(tempStr);
  mySerial.print(0xF8, BYTE);
}

void lcd_cursor_form(int mode)
{
  mySerial.print(ESC, BYTE);
  mySerial.print('C');
  mySerial.print(mode + 48, BYTE);
}

