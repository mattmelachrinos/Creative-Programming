/*
Matt Melachrinos | mattmelachrinos.com
 
Randomness Lecture
Creative Programming 1 with Jeff Thompson
*/

void setup() {
  size(800, 800);
  cursor(CROSS);        // turn off normal cursor
  background(0);
  
  //drawing a bunch of dots
  fill(255);
  noStroke();
  for(int i = 0; i <1000;i++){
   float r = random(0,255);         
   float g = random(0,255); 
   float b = random(0,255);
   float x = random(0,width);         //gives random number from 0 to width - 1
   float y = random(0,height);
   fill(r,g,b,200);
   ellipse(x,y,40,40);
  }
}

void draw(){

}

void mousePressed() {
  background(0);
  fill(255);
  noStroke();
  for(int i = 0; i <1000;i++){
   float r = random(0,255);         
   float g = random(0,255); 
   float b = random(0,255);
   float x = random(0,width);         //gives random number from 0 to width - 1
   float y = random(0,height);
   fill(r,g,b,200);
   ellipse(x,y,40,40);
  }
}