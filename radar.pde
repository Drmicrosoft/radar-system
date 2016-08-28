import processing.serial.*;
  int k = 0 ;
void radar(float x) 
{

 ellipse(420, 640, 800, 800); 
 ellipse(420, 640, 700, 700); 
 ellipse(420, 640, 600, 600); 
 ellipse(420, 640, 500, 500);
 ellipse(420, 640, 400, 400);
 ellipse(420, 640, 300, 300);
 ellipse(420, 640, 200, 200);
 ellipse(420, 640, 100, 100);
 

 line(420,640,420-(x*1.2*cos(k*PI/360)),640 - (x*1.2*sin(k*PI/360)));
 
 if(k==360)
 {
   k=0;
 }
 else 
 k++;
}

Serial myPort;
void setup() {
      size(840, 640);

myPort = new Serial(this, "/dev/ttyACM0", 9600);
}


void draw() {
  
  
   while (myPort.available() > 0) {
    String inBuffer = myPort.readString();   
    println(inBuffer);
    radar(float(inBuffer));
   }
   
   
   
  
}