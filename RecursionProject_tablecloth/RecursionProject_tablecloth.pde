 /*
 Matt Melachrinos | mattmelachrinos.com
 
 Recursion Project
 Creative Programming 1 with Jeff Thompson
 */

float initialRadius = 500;
float minRadius = 2;

void setup() {
  size(800, 800);        //sets variables width and height
  background(#FFFFFF);
  noStroke();
  drawCircle(width/2,height/2,initialRadius);
}

void drawCircle(float x, float y, float r){
  r *=.55;
  float gray = map(r,minRadius, 500,100,255);
  fill(gray,0,gray/2);
  ellipse(x,y,r,r);
  if (r >minRadius){
    drawCircle(x+r,y,r);
    drawCircle(x-r,y,r);
    drawCircle(x,y+r,r);
    drawCircle(x,y-r,r);
  }
  
}