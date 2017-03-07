/*
Matt Melachrinos | mattmelachrinos.com
 
  transparent backgrounds
 Creative Programming 1 with Jeff Thompson
*/



void setup() {
  size(800,800);
  
}


void draw() {
  
  // instead of background(), we'll have to
  // draw a semi-transparent rectangle over the
  // entire screen
  fill(255, 4);
  noStroke();
  rect(0,0, width,height);
  
  // draw lines from the previous to current
  // mouse positions
  stroke(0);
  line(mouseX,mouseY, pmouseX,pmouseY);
  
}