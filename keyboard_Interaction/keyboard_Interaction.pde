/*
Matt Melachrinos | mattmelachrinos.com
 
  keyboard interaction
 Creative Programming 1 with Jeff Thompson
*/


String letterPressed = "a";
PFont font;
int asciiCode;

void setup() {
  size(800, 800);
  colorMode(HSB);
  font = createFont("Helvetica",288);
  textAlign(CENTER, CENTER);
  
}

void draw(){
 float h = map(asciiCode, 32,126,0,255);
 background(h,255,255);
  
 fill(255);
 noStroke();
 textFont(font,288);
 text(letterPressed,width/2,height/2);
 
}

void keyPressed(){
  asciiCode = key;
  letterPressed = Character.toString(key);
  
  if(key==CODED)
  println("Key code: " + keyCode);
}