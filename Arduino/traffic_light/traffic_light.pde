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

// Duration of the red & green phase in seconds:
const int redPhase = 5;
const int greenPhase = 5;

// The different phases of a german traffic light
enum phase {
  red,
  red_yellow,
  yellow,
  green
};

int brightness = 0;
phase currentPhase;
int dummyCounter;

void setup() {
  // Start with red phase
  currentPhase = red;
  dummyCounter = redPhase * 100;
}

void loop() {
  //outputLogic();
//  digitalWrite(13, HIGH);
//  readBrightness();
//  analogWrite(redLed, LOW);
  //analogWrite(redLed, brightness);
  //delay(10);
  /*
  // if timer is zero switch to the next phase
  if (dummyCounter == 0) {
    switchToNextPhase();
  }
  
  dummyCounter--;
  delay(10);*/

  
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

void switchToNextPhase() {
  switch(currentPhase) {
    case red: currentPhase = red_yellow;
      dummyCounter = 100;    // 1 second
      break;
    case red_yellow: currentPhase = green;
      dummyCounter = greenPhase * 100;
      break;
    case green: currentPhase = yellow;
      dummyCounter = 300;    // 3 seconds
      break;
    case yellow: currentPhase = red;
      dummyCounter = redPhase * 100;
      break;
  }
}

void outputLogic() {
  readBrightness();
  
  switch(currentPhase) {
    red: switchToRed();
      break;
    red_yellow: switchToRedYellow();
      break;
    green: switchToGreen();
      break;
    yellow: switchToYellow();
      break;
  }
}

// activate red phase
void switchToRed() {
  switchOn(redLed);
  switchOff(yellowLed);
  switchOff(greenLed);
}

// activate red & yellow phase
void switchToRedYellow() {
  switchOn(redLed);
  switchOn(yellowLed);
  switchOff(greenLed);
}

// activate green phase
void switchToGreen() {
  switchOff(redLed);
  switchOff(yellowLed);
  switchOn(greenLed);
}

// activate yellow phase
void switchToYellow() {
  switchOff(redLed);
  switchOn(yellowLed);
  switchOff(greenLed);
}

// switch a output pin on
void switchOn(int ledPin) {
  analogWrite(ledPin, brightness);
}

// switch a output pin off
void switchOff(int ledPin) {
  analogWrite(ledPin, 0);
}

void readBrightness() {
  // Retrieve the potentiometer value
  int sensorValue = analogRead(analogInput);
  
  // Convert analog in to analog out (10 Bit in & 8 bit PWM out)
  brightness = map(sensorValue, 0, 1023, 0, 255);
}
