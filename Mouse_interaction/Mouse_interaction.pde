/*
Matt Melachrinos | mattmelachrinos.com
 
  mouse interaction
 Creative Programming 1 with Jeff Thompson
*/

float angle = 0;

void setup() {
  size(800, 800);
  noCursor();        // turn off normal cursor
  rectMode(CENTER);                   // see also the cursor() command for other options
}


void draw() {
  
  // a bit fancier than the ellipse() code below
  // change the background color from orange to blue
  // based on the mouse position
  color c1 = color(255,150,0);
  color c2 = color(0,150,255);
  float pos = map(mouseX*mouseY, 0,width*height, 0,1); 
  background( lerpColor(c1,c2, pos) );
 
 
 
  // draw a white circle in the mouse's position
  fill(255);
  noStroke();
  pushMatrix();
  translate(mouseX,mouseY);
  rotate(angle);
  rect(0,0, 60,60);
  ellipse(100,0,10,10);
  ellipse(-100,0,10,10);
  ellipse(0,100,10,10);
  ellipse(0,-100,10,10);
  popMatrix();
  
  if (mousePressed)
    angle+= 0.1;
}


void mousePressed() {
  println("clicked at: " + mouseX +"," +mouseY);
  background(255);
}

void mouseReleased() {
  println("released at: " + mouseX +"," +mouseY);
}

void mouseDragged() {
  //println("- dragging...");
  //angle += .1;
}