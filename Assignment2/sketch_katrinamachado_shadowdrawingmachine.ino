#include <Servo.h>

Servo myservo;
int val;

void setup()
{
   Serial.begin(9600);
myservo.attach(12);
}
void loop()
{
  //Serial.println(val);
  Serial.println(analogRead(A0));
val = analogRead(A0);
val = map(val, 800, 1023, 0, 179);
myservo.write(val);
delay(15);
} 
