/*
 A simple program for a german traffic light with brightness control.
 
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
  outputLogic();

  // if timer is zero switch to the next phase
  if (dummyCounter == 0) {
    switchToNextPhase();
  }
  
  dummyCounter--;
  delay(10);
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
    case red: setLeds(1, 0, 0);
      break;
    case red_yellow: setLeds(1, 1, 0);
      break;
    case green: setLeds(0, 0, 1);
      break;
    case yellow: setLeds(0, 1, 0);
      break;
  }
}

// de- / activate LEDs
void setLeds(int red, int yellow, int green) {
  analogWrite(redLed, red * brightness);
  analogWrite(yellowLed, yellow * brightness);
  analogWrite(greenLed, green * brightness);
}

void readBrightness() {
  // Retrieve the potentiometer value
  int sensorValue = analogRead(analogInput);
  
  // Convert analog in to analog out (10 Bit in & 8 bit PWM out)
  brightness = map(sensorValue, 0, 1023, 0, 255);
}
