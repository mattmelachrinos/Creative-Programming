/*
Matt Melachrinos | mattmelachrinos.com
 
Recursion
Creative Programming 1 with Jeff Thompson
*/

/*Recursion
    1. initial values
    2. exit condition (base case)
*/

  float initialRadius = width;
  float minRadius = 2;

void setup() {
  size(800, 800);        //sets variables width and height
  background(#CECECE);

  drawCircle(width/2,height/2,initialRadius);
}

void drawCircle(float x, float y, float r){
  
  noFill();
  ellipse(x,y,r,r);
  r *=.5;
  float gray = map(r,minRadius, 700,0,255);
  stroke(gray);
  if (r >minRadius){
    drawCircle(x+r,y,r);
    drawCircle(x-r,y,r);
    drawCircle(x+r,y+r,r);
    drawCircle(x+r,y-r,r);
  }
  
}