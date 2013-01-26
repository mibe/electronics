#include <OneWire.h>
#include <DallasTemperature.h>
#include <SPI.h>
#include <Ethernet.h>

byte mac[] = {  0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };
byte ip[] = { 192,168,1,99 };
byte subnet[] = { 255,255,255,0 };
byte gateway[] = { 192,168,1,2 };
byte server[] = { 80,67,28,163 };

// 1-Wire-Bus instanzieren
OneWire oneWire(2);

// Instanzieren der Dallas-Sensoren
DallasTemperature sensors(&oneWire);

Client client(server, 80);

void setup(void)
{
  Ethernet.begin(mac, ip, gateway, subnet);
  Serial.begin(9600);
  delay(2000);
  
  // Start der Sensorübertragung
  sensors.begin();
}

float get_temp(void)
{
    // Temperaturen abfragen
  sensors.requestTemperatures();
  // Sensor 0
  float tempC1 = sensors.getTempCByIndex(0);
return tempC1;
}

void loop(void)
{ 
  float temp = get_temp();
  Serial.println(temp);
  
  if (temp == -127 || temp == 85)
    Serial.println("sensor error");
  else
  {
    if (client.connect())
    {
      client.print("GET /add.php?temp=");
      client.print(temp);
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
  
  delay(60000);
}

