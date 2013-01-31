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
#define P_LCD_TX 8
#define P_LCD_DUMMY 9
#define P_BUTTON 3
#define I_BUTTON 1
#define P_LM75 0

// Refresh interval in seconds
unsigned int REFRESH = 10;

int ESC = 0x1B;

// 1-Wire-Bus instanzieren
OneWire oneWire(P_DS1820);

// Instanzieren der Dallas-Sensoren
DallasTemperature sensors(&oneWire);
SoftwareSerial mySerial(P_LCD_DUMMY, P_LCD_TX); // RX, TX
Client client(server, 80);

void setup(void)
{
  //  Ethernet.begin(mac, ip, gateway, subnet);
  Serial.begin(9600);

  pinMode(P_LCD_TX, OUTPUT);
  pinMode(P_BUTTON, INPUT);
  digitalWrite(P_BUTTON, HIGH);
  
  // set the data rate for the SoftwareSerial port
  mySerial.begin(9600);

  delay(2000);
  
  lcd_reset();
  lcd_cursor_form(0);
  lcd_led_mode(0);

  attachInterrupt(I_BUTTON, button_pressed, CHANGE);

  // Start der Sensorübertragung
  sensors.begin();
}

void loop(void)
{ 
  update_temp();
  unsigned long refresh = REFRESH * 1000;
  delay(refresh);
}

float get_temp1(void)
{
  // Temperaturen abfragen
  sensors.requestTemperatures();
  // Sensor 0
  float tempC1 = sensors.getTempCByIndex(0);
  tempC1 -= 2.0;
  return tempC1;
}

float get_temp2(void)
{
  float tempC = analogRead(P_LM75);
  float vcc = read_vcc() / 1000.0;
  tempC = (vcc * tempC * 100) / 1024.0;
  return tempC;
}

long read_vcc()
{
  long result;
  // Read 1.1V reference against AVcc
  ADMUX = _BV(REFS0) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1);
  delay(2); // Wait for Vref to settle
  ADCSRA |= _BV(ADSC); // Convert
  while (bit_is_set(ADCSRA,ADSC));
  result = ADCL;
  result |= ADCH<<8;
  result = 1125300L / result; // Back-calculate AVcc in mV
  return result;
}

void button_pressed(void)
{
  Serial.println("interrupt");
  
  // LED 10 Sek. an
  lcd_led_mode(100);
  delay(250);
}

void update_temp(void)
{
  float temp1 = get_temp1();
  float temp2 = get_temp2();
  
  Serial.println(temp1);
  Serial.println(temp2);

  if (temp1 == -127 || temp1 == 85)
    Serial.println("sensor error");
  else
  {
    Serial.print("Temp1: ");
    Serial.println(temp1);
    Serial.print("Temp2: ");
    Serial.println(temp2);
    lcd_print(temp1, temp2);
    //send_to_web(temp1);
  }
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

void lcd_print(float temp1, float temp2)
{
  char tempStr[5];
  dtostrf(temp1, 5, 2, tempStr);
  
  mySerial.print(0x0C, BYTE);
  mySerial.print("Temperatur 1: ");
  mySerial.print(tempStr);
  mySerial.print(0xF8, BYTE);
  
  dtostrf(temp2, 5, 2, tempStr);
  
  mySerial.print("Temperatur 2: ");
  mySerial.print(tempStr);
  mySerial.print(0xF8, BYTE);
}

void lcd_cursor_form(byte mode)
{
  mySerial.print(ESC, BYTE);
  mySerial.print('C');
  mySerial.print(mode + 48, BYTE);
}

void lcd_led_mode(byte mode)
{
  mySerial.print(ESC, BYTE);
  mySerial.print('L');
  mySerial.print(mode, BYTE);
}
