/*
Matt Melachrinos | mattmelachrinos.com
 
Randomness Lecture pt.2
Brownian Motion
Creative Programming 1 with Jeff Thompson
*/

float speed = 10;      //max movement per frame
float x,y;

void setup() {
  size(800, 800);
  cursor(CROSS);        
  background(255);
  x = width/2;
  y = height/2;
 
}

void draw(){
  
  fill(0,80);
  noStroke();
  ellipse(x,y,6,6);
  x+= random(-speed,speed);
  y+= random(-speed,speed);
  if (x<0)
    x = width;
  if (y<0)
    y = height;
  if (x>width)
    x = 0;
  if (y>height)
    y = 0;

}