 /*
 Matt Melachrinos | mattmelachrinos.com
 
 Recursion Project
 Creative Programming 1 with Jeff Thompson
 */

int initx = 13;
int inity = 2;

void setup() {
  size(800, 800);        //sets variables width and height
  background(#FFFFFF);

  stroke(0);
  strokeWeight(1);
  translate(400,400);
  drawLine(initx,inity);
}

void drawLine(float x, float y){
  x = x*y/3-5;
  y = x/y*8-5;
  //float gray = map(r,minRadius, 400,100,255);
  //fill(gray,0,gray/2);
  line(0,0,x,y);
  line(0,0,-x,y);
  line(0,0,x,-y);
  line(0,0,-x,-y);
  if (x <400){
    drawLine(x,y);
  }
  
}