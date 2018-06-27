  #include <Servo.h>

String message; //string that stores the incoming message from bluetooth

int bt0 = 0; //RX
int bt1 = 1; //TX

int echoPin = 4; //Ultrasound sensor echo pin
int trigPin = 7; //Ultrasound trigger pin 

int motor0 = 8; //Rear motor right
int motor1 = 9; //Rear motor left
int motor_enable = 12;

Servo servo_steering;


void setup() {

  Serial.begin(9600);
  Serial.setTimeout(5);
  
  servo_steering.attach(2);
  servo_steering.detach();

  pinMode(echoPin, INPUT);
  pinMode(trigPin, OUTPUT);
  pinMode(motor0, OUTPUT);
  pinMode(motor1, OUTPUT);
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
    distance= duration*0.034/2;

    // Prints the distance on the Serial Monitor
    Serial.print("Distance: ");
    Serial.println(distance);

/*
 * Motor control code
 * While-loop reads if there's any data from serial monitor
 * -> Bluetooth-commands are written in serial monitor from your mobile phone
 * Message is character where string from serial monitor is stored
 * From mobile app you can send these strings (Arduino )
 * 
 */


    while(Serial.available() > 0){//while there is data available on the serial monitor
      message = char(Serial.read()); //store string from serial command

      // left
      if(message == "L"){
        servo_steering.attach(2);
        servo_steering.write(0);
        delay(30); // How long will steering wheels turn in [ms], 200ms=60 degrees, 30ms = ~10 degrees
        servo_steering.detach();
      }

      //right
      else if( message == "R"){
        servo_steering.attach(2);
        servo_steering.write(180);
        delay(30);
        servo_steering.detach();
      }

      //forward
      else if( message == "X" or message == "F"){ // or message == "F"
        digitalWrite(motor_enable, HIGH);
        delay(50); //Let ENABLE signal get high in Motor_control
        digitalWrite(motor0, HIGH);
        digitalWrite(motor1, LOW);
        delay(1500);
      }

      //backward
      else if(message == "G"){ // or message == "G"
        digitalWrite(motor_enable, HIGH);
        delay(50);
        digitalWrite(motor0, LOW);
        digitalWrite(motor1, HIGH);
        delay(1000);

      }

      //stop
      else if (message == "Y" or message == "S"){
      digitalWrite(motor0, LOW);
      digitalWrite(motor1, LOW);
      digitalWrite(motor_enable, LOW);
      message="";
      }

      //reset
      else {
      digitalWrite(motor0, LOW);
      digitalWrite(motor1, LOW);
      digitalWrite(motor_enable, LOW);
      message="";
      }
      
      
    }

    delay(500); //delay
}
