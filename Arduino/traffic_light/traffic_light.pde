/*
 A simple program for a german traffic light with brighness control.
 
 Connect a potentiometer to an analog input pin and a red, yellow
 and green LED to output pins which have PWM.
 
 The yellow phase from green to red is three seconds. This corresponds
 to a traffic light which controls traffic with max. 50 kph.
 
 (C) 2011 Michael Bemmerl
 License: CC-0 1.0 (http://creativecommons.org/publicdomain/zero/1.0/)
 
 */

// Set the corresponding input & output pin constants
const int analogInput = A0;  // Brightness potentiometer
const int redLed = 6;        // Red LED output pin
const int yellowLed  = 5;    // Yellow LED output pin
const int greenLed = 3;      // Green LED output pin

// Duration of the red & green phase:
const int redPhase = 5;
const int greenPhase = 5;

int brightness = 0;

void setup() {
}

void loop() {
  readBrightness();
  
  // Red phase
  analogWrite(redLed, brightness);
  delay(redPhase * 1000);
  
  // Activate yellow LED
  analogWrite(yellowLed, brightness);
  delay(1000);
  
  // Green phase: Red & yellow off, green on
  analogWrite(redLed, LOW);
  analogWrite(yellowLed, LOW);
  analogWrite(greenLed, brightness);
  delay(greenPhase * 1000);
  
  // Switch to yellow again
  analogWrite(yellowLed, brightness);
  analogWrite(greenLed, LOW);
  delay(3000);
  
  // Start new red phase
  analogWrite(redLed, brightness);
  analogWrite(yellowLed, LOW);
}

void readBrightness() {
  // Retrieve the potentiometer value
  int sensorValue = analogRead(analogInput);
  
  // Convert analog in to analog out (10 Bit in & 8 bit PWM out)
  brightness = map(sensorValue, 0, 1023, 0, 255);
}
