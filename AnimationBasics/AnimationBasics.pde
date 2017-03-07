 /*
 Matt Melachrinos | mattmelachrinos.com
 
 Animation Basics
 Creative Programming 1 with Jeff Thompson
 */
 
float angle = 0;
float speed = .008;
float x = 0;
float moveSpeed = 1;
boolean outwards = true;

void setup() {
  size(800, 800); 
  rectMode(CENTER);
}

void draw(){
  //println("Current Framerate: " + frameRate + "fps");
  //background(150);
  
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(angle);
  noFill();
  stroke(255);
  ellipse(x,0,500,500);
  popMatrix();
  
  angle +=speed;
  if (outwards){
  x+= moveSpeed;
    if( x > 500)
    outwards = false;
}
  else{
    x-= moveSpeed;
  if (x == 0)
    outwards = true;
  }

}