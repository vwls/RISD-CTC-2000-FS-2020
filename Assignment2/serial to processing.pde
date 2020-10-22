import processing.serial.*;
Serial mySerial;
PrintWriter output;
PShape dial, left, right;
String data;
String[] dataArray;
String portName = Serial.list()[1];
//String[] stringArray = split(data, ',');
int[] intArray = new int[9];

//PFont f = createFont("Georgia", 12);

int number = 0;

void setup() {
  size(1000,600);
    
  mySerial = new Serial(this, portName, 9600);  // Initalize serial connection
  
  
  
  
  
  
  // Create the shape group
  dial = createShape(GROUP);

  // Make two shapes
  ellipseMode(CORNER);
  noStroke();
  left = createShape(ARC, 0, 0, 70, 70, 0, PI, OPEN);
  left.setFill(color(250, 230, 200));
  right = createShape(ARC, 0, 0, 70, 70, -PI, 0, OPEN);
  right.setFill(color(140, 150, 180));

  // Add the two "child" shapes to the parent group
  dial.addChild(left);
  dial.addChild(right);
  }
  
  //int backgroundColor2 = int(map(intArray[1], 0, 500, 0, 255));
  //int backgroundColor3 = int(map(intArray[2], 0, 500, 0, 255));


void draw() {
  clear();
  background(#FFFFFF);
  
  while (mySerial.available() > 0) {
    String inBuffer = mySerial.readString();   
    if (inBuffer != null) {
      println(inBuffer);
      String[] array = split(inBuffer, ',');
      for(int i = 0; i < 9; i++){
        intArray[i] = int(array[i]);
      }
      
      printArray(intArray);
    }
  }
  //above: getting data from arduino, print into intArray
  PFont f = createFont("Georgia", 40);
  textFont(f);
  textSize(40);
  
  int color0 = int(map(intArray[0], 0, 1000, 0, 255));
  int color1 = int(map(intArray[1], 0, 1000, 0, 255));
  int color2 = int(map(intArray[2], 0, 1000, 0, 255));
  int color3 = int(map(intArray[3], 0, 1000, 0, 255));
  int color4 = int(map(intArray[4], 0, 1000, 0, 255));
  int color5 = int(map(intArray[5], 0, 1000, 0, 255));
  int color6 = int(map(intArray[6], 0, 1000, 0, 255));
  int color7 = int(map(intArray[7], 0, 1000, 0, 255));
  int color8 = int(map(intArray[8], 0, 1000, 0, 255));
  
push();
translate(width/10, height/2);
rotate(color0);
shape(dial,-35,-35);
pop();

push();
translate(width/10*2, height/2);
rotate(color1);
shape(dial,-35,-35);
pop();

push();
translate(width/10*3, height/2);
rotate(color2);
shape(dial,-35,-35);
pop();

push();
translate(width/10*4, height/2);
rotate(color3);
shape(dial,-35,-35);
pop();

push();
translate(width/10*5, height/2);
rotate(color4);
shape(dial,-35,-35);
pop();

push();
translate(width/10*6, height/2);
rotate(color5);
shape(dial,-35,-35);
pop();

push();
translate(width/10*7, height/2);
rotate(color6);
shape(dial,-35,-35);
pop();

push();
translate(width/10*8, height/2);
rotate(color7);
shape(dial,-35,-35);
pop();

push();
translate(width/10*9, height/2);
rotate(color8);
shape(dial,-35,-35);
pop();

