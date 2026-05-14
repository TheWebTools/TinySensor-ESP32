#include <Arduino.h>

void setup() {
  Serial.begin(115200);
  Serial.println("TinySensor build OK");
}

void loop() {
  delay(1000);
}
