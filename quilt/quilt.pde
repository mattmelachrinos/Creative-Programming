/*
Matt Melachrinos | mattmelachrinos.com
 
 Quilt Project
 Creative Programming 1 with Jeff Thompson
 */

void setup() {
  size(800, 800);        //sets variables width and height
  background(#CECECE);

  color blue = color(84, 108, 252);
  color green = color(73, 250, 101);
  color yellow = color(244, 245, 30);
  color purple = color(197, 30, 245);
  color red = color(245, 30, 55);
  color teal = color(30, 245, 229);
  color orange = color(245, 148, 30);

  noStroke();
  //fill(150);
  //rect(50, 50, 700, 700);
  //black background
  fill(0);
  stroke(150);
  strokeWeight(3);
  rect(100, 100, 600, 600);


  pushMatrix();
  translate(300, 150);
  sBlock(blue);
  popMatrix();

  pushMatrix();
  translate(100, 600);
  squareBlock(orange);
  translate(0, -150);
  tBlock(teal);
  translate(50, 50);
  rotate(radians(-90));
  translate(-100, 0);
  lineBlock(red);
  translate(-100, 50);
  sBlock(yellow);
  translate(0, 100);
  tBlock(purple);
  translate(150, -100);
  squareBlock(blue);
  translate(50, 150);
  rotate(radians(90));
  sBlock(green);
  translate(100, 50);
  tBlock(yellow);
  translate(250, 100);
  rotate(radians(90));
  lineBlock(blue);
  translate(0, 100);
  rotate(radians(90));
  sBlock(orange);
  translate(-100, 00);
  squareBlock(red);
  rotate(radians(-90));
  translate(-200, 0);
  lBlock(green);
  rotate(radians(-90));
  translate(-250, -50);
  tBlock(blue);
  rotate(radians(-90));
  translate(-150, -150);
  lBlock(orange);
  translate(50, 250);
  squareBlock(purple);
  rotate(radians(90));
  translate(100, -250);
  lineBlock(yellow);
  rotate(radians(-90));
  translate(-250, -500);
  lBlock(red);
  popMatrix();

  //red tblock border
  pushMatrix();
  for(int i = 0; i < 4; i++){
    for (int x=0; x<790; x+=30) {
      tBlockMini(red);
      translate(30, 0);
    }
    rotate(radians(90));
    translate(0,10);
  }
  popMatrix();
  pushMatrix();
  translate(30,30);
  for(int i = 0; i < 4; i++){
    for (int x=0; x<730; x+=30) {
      sBlockMini(blue);
      translate(30, 0);
    }
    rotate(radians(90));
    translate(0,10);
  }
  popMatrix();
  pushMatrix();
  translate(70,70);
  for(int i = 0; i < 4; i++){
    for (int x=0; x<650; x+=30) {
      lBlockMini(green);
      translate(30, 0);
    }
    rotate(radians(90));
    translate(0,0);
  }
  popMatrix();
  ////stitching
  //stroke(75);
  //strokeWeight(1);
  //for (int x=0;x<800;x+=50){
  // for(int y=0;y<800;y+=3){
  //   point(x,y);
  //   point(y,x);
  // }
  //}

  save("MelachrinosMatthew_QUILT.png");
}

void tBlock(color thisColor) {
  fill(thisColor);
  stroke(150);
  strokeWeight(3);
  rect(0, 0, 50, 50);
  rect(0, 50, 50, 50);
  rect(0, 100, 50, 50);
  rect(50, 50, 50, 50);
}
void squareBlock(color thisColor ) {
  fill(thisColor);
  stroke(150);
  strokeWeight(3);
  rect(0, 0, 50, 50);
  rect(0, 50, 50, 50);
  rect(50, 0, 50, 50);
  rect(50, 50, 50, 50);
}
void lineBlock(color thisColor) {
  fill(thisColor);
  stroke(150);
  strokeWeight(3);
  rect(0, 0, 50, 50);
  rect(0, 50, 50, 50);
  rect(0, 100, 50, 50);
  rect(0, 150, 50, 50);
}
void sBlock(color thisColor) {
  fill(thisColor);
  stroke(150);
  strokeWeight(3);
  rect(0, 0, 50, 50);
  rect(0, 50, 50, 50);
  rect(50, 50, 50, 50);
  rect(50, 100, 50, 50);
}
void lBlock(color thisColor) {
  fill(thisColor);
  stroke(150);
  strokeWeight(3);
  rect(0, 0, 50, 50);
  rect(50, 00, 50, 50);
  rect(50, 50, 50, 50);
  rect(50, 100, 50, 50);
}

void tBlockMini(color thisColor) {
  fill(thisColor);
  stroke(150);
  strokeWeight(3);
  rect(0, 10, 10, 10);
  rect(10, 10, 10, 10);
  rect(20, 10, 10, 10);
  rect(10, 0, 10, 10);
}
void squareBlockMini(color thisColor ) {
  fill(thisColor);
  stroke(150);
  strokeWeight(3);
  rect(0, 0, 10, 10);
  rect(0, 10, 10, 10);
  rect(10, 0, 10, 10);
  rect(10, 10, 10, 10);
}
void lineBlockMini(color thisColor) {
  fill(thisColor);
  stroke(150);
  strokeWeight(3);
  rect(0, 0, 10, 10);
  rect(0, 10, 10, 10);
  rect(0, 20, 10, 10);
  rect(0, 30, 10, 10);
}
void sBlockMini(color thisColor) {
  fill(thisColor);
  stroke(150);
  strokeWeight(3);
  rect(0, 0, 10, 10);
  rect(0, 10, 10, 10);
  rect(10, 10, 10, 10);
  rect(10, 20, 10, 10);
}
void lBlockMini(color thisColor) {
  fill(thisColor);
  stroke(150);
  strokeWeight(3);
  rect(0, 0, 10, 10);
  rect(10, 00, 10, 10);
  rect(10, 10, 10, 10);
  rect(10, 20, 10, 10);
}