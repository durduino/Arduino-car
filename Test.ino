#include <Servo.h>

String message;         //string that stores the incoming message from bluetooth

int bt0 = 0;            //RX
int bt1 = 1;            //TX

int echoPin = 4;        //Ultrasound sensor echo pin
int trigPin = 7;        //Ultrasound trigger pin

int motor0 = 8;         //Rear motor right
int motor1 = 9;         //Rear motor left
int motor_enable = 12;  //Motor enable pin

Servo servo_steering;


void setup() {
  Serial.begin(9600);
  Serial.setTimeout(5);
  
  servo_steering.attach(2);
  servo_steering.detach();

  pinMode(echoPin,      INPUT);
  pinMode(trigPin,      OUTPUT);
  pinMode(motor0,       OUTPUT);
  pinMode(motor1,       OUTPUT);
  pinMode(motor_enable, OUTPUT);
}


void loop() {

  long duration;
  int distance;

  // Clears the trigPin
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);

  // Sets the trigPin on HIGH state for 10 micro seconds
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);

  // Reads the echoPin, returns the sound wave travel time in microseconds
  duration = pulseIn(echoPin, HIGH);

  // Calculating the distance
  distance = duration * 0.034 / 2;

  // Prints the distance on the Serial Monitor
  Serial.print("D"); //D is command in Android-app
  Serial.println(distance);

  delay(100);

  if (distance < 5){ //If distance is shorter than 7 cm, motors stop
    Stop();
  }

  
  char message; //Variable declaration for switch-case

  while (Serial.available() > 0) { //while there is data available on the serial monitor
    message = char(Serial.read()); //Serial data is stored in message
    break;
    }

  switch (message) {
    case 'R': right();        break;
    case 'L': left();         break;
    case 'X': forward_con();  break;
    case 'Y': Stop();         break;
    case 'F': forward_shrt(); break;
    case 'G': backward();     break;
  }
}



void right(){
  servo_steering.attach(2);
  servo_steering.write(180);
  delay(30);
  servo_steering.detach();
}

void left(){
  servo_steering.attach(2);
  servo_steering.write(0);
  delay(30);
  servo_steering.detach();
}

void forward_con(){ //forward continous, stops at pressing Y
  digitalWrite(motor_enable, HIGH);
  delay(50); //Let enable signal get high in Motor_control
  digitalWrite(motor0, HIGH);
  digitalWrite(motor1, LOW);
}

void forward_shrt(){ //forward for 1000 milsec = 1 sec
  digitalWrite(motor_enable, HIGH);
  delay(50);
  digitalWrite(motor0, HIGH);
  digitalWrite(motor1, LOW);
  delay(1000); //Time motors are rolling
  digitalWrite(motor_enable, LOW);
  digitalWrite(motor0, LOW);
  digitalWrite(motor1, LOW);
}

void backward(){
  if (motor_enable == HIGH and motor0 == HIGH and motor1 == LOW){
    brake();
  }
  else{
    digitalWrite(motor_enable, HIGH);
    delay(50); 
    digitalWrite(motor0, LOW);
    digitalWrite(motor1, HIGH);
    delay(1000);
    digitalWrite(motor_enable, LOW);
    digitalWrite(motor0, LOW);
    digitalWrite(motor1, LOW);
  }
}

void brake(){
  digitalWrite(motor_enable, HIGH);
  digitalWrite(motor0, HIGH);
  digitalWrite(motor1, HIGH);
}

void Stop(){
  digitalWrite(motor_enable, LOW);
  digitalWrite(motor0, LOW);
  digitalWrite(motor1, LOW);
}




