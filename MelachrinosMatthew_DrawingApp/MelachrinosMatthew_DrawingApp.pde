/*
Matt Melachrinos | mattmelachrinos.com
 
Drawing App
Creative Programming 1 with Jeff Thompson
*/

float angle = 0;
int asciiCode;
String letterPressed = "";
int i = 1;
int initialRadius = 150;
int minRadius = 2;
int tool = 1;


void setup() {
  size(800, 800);
  cursor(CROSS);        // turn off normal cursor
  rectMode(CENTER);                   // see also the cursor() command for other options
}


void draw() {

  // a bit fancier than the ellipse() code below
  // change the background color from orange to blue
  // based on the mouse position
  //color c1 = color(255, 150, 0);
  //color c2 = color(0, 150, 255);
  //float pos = map(mouseX*mouseY, 0, width*height, 0, 1); 
  //background( lerpColor(c1, c2, pos) );



  // draw a white circle in the mouse's position
  fill(255);
  noStroke();
  

  if (mousePressed)
    angle+= 0.1;
}


void mousePressed() {
  //println("clicked at: " + mouseX +"," +mouseY);
  drawCircle(mouseX,mouseY,initialRadius);
}

void mouseReleased() {
}

void mouseDragged() {
  drawCircle(mouseX,mouseY,initialRadius);

}

void keyPressed() {
  asciiCode = key;  
  if (asciiCode== 115 || asciiCode== 83) {
    save("MelachrinosMatthew_DrawingApp" +day()+hour()+ second() +".png");
    println("Screenshot Saved");
  }
  if ( asciiCode== 61) {
    initialRadius++;
    println("Radius: " + initialRadius);
  }
  if ( asciiCode== 43) {
    initialRadius+=10;
    println("Radius: " + initialRadius);
  }
  if (asciiCode== 45) {
    initialRadius--;
    println("Radius: " + initialRadius);
  }
  if (asciiCode== 95) {
    initialRadius-=10;
    println("Radius: " + initialRadius);
  }
  if (asciiCode== 32) {
    background(200);
    println("RESET");
  }
 //println( int(key));
}

void drawCircle(float x, float y, float r){
  noFill();
  ellipse(x,y,r,r);
  r *=.75;
  float gray = map(r,minRadius, 700,0,255);
  stroke(gray);
  if (r >minRadius ){
    drawCircle(x,y,r);
  }
}