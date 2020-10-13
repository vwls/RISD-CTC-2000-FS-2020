
*/

int led_1 = 11;           // the PWM pin the LED is attached to
int led_2 = 10;
int led_3 = 9;
int led_4 = 6;
int led_5 = 5;
int brightness = 15;    // how bright the LED is
int fadeAmount = 5;    // how many points to fade the LED by

// the setup routine runs once when you press reset:
void setup() {
  // declare pin 9 to be an output:
  pinMode(led_1, OUTPUT);
  pinMode(led_2, OUTPUT);
  pinMode(led_3, OUTPUT);
  pinMode(led_4, OUTPUT);
  pinMode(led_5, OUTPUT);
}

// the loop routine runs over and over again forever:
void loop() {
  // set the brightness of pin 9:
  analogWrite(led_1, brightness);
  analogWrite(led_2, brightness);
  analogWrite(led_3, brightness);
  analogWrite(led_4, brightness);
  analogWrite(led_5, brightness);


  // change the brightness for next time through the loop:
  brightness = brightness + fadeAmount;

  // reverse the direction of the fading at the ends of the fade:
  if (brightness <= 0 || brightness >= 255) {
    fadeAmount = -fadeAmount;
  }
  // wait for 30 milliseconds to see the dimming effect
  delay(70);
}
