/*
Matt Melachrinos | mattmelachrinos.com
 
 drawing of a robot
 Creative Programming 1 with Jeff Thompson
 */

void setup() {
  size(800, 800);        //sets variables width and height
  background(#ffffff);
  fill(#AFAFAF);
  noStroke();

  //Head and Body
  rect(width/16 * 5, height/16 * 2, width/16 * 6, height/16 * 4, 7);
  fill(#D60000);
  rect(width/16 * 7, height/16 * 6, width/16 * 2, height/16 * 3);
  rect(225, 600, 100, 100); //leg
  rect(475, 600, 100, 100); //other leg
  rect(570, 400, 100, 100); //shoulder
  rect(130, 400, 100, 100); //other shoulder
  fill(#AFAFAF);
  rect(175, height/16 * 7 -30, 450, height/16 * 6, 7);
  //feet
  rect(200, 675, 150, 50, 7);
  rect(450, 675, 150, 50, 7);
  fill(0);
  rect(200, 710, 150, 20, 7);
  rect(450, 710, 150, 20, 7);
  //arms
  fill(#AFAFAF);
  rect(650, 200, 50, 300);
  rect(100, 200, 50, 300);
  //hands
  fill(#D60000);
  rect(663, 180, 25, 20);
  rect(113, 180, 25, 20);
  fill(#FFFFFF);
  stroke(0);
  strokeWeight(5);
  ellipse(125, 150, 70, 70);
  ellipse(675, 150, 70, 70);
  noStroke();
  triangle(75, 100, 175, 100, 125, 175);
  triangle(625, 100, 725, 100, 675, 175);

  //Face
  fill(0);
  stroke(0);
  ellipse(325, height/16 * 3, 20, 20); //eyes
  ellipse(475, height/16 * 3, 20, 20);
  fill(#FFFFFF);
  strokeWeight(2);
  rect(350, height/16 * 5, 100, 20, 7);
  fill(#D60000);
  noStroke();
  triangle(400, 190, 415, 215, 385, 215);

  //mouth
  stroke(0);
  strokeWeight(1);
  line(350, height/16*5+10, 450, height/16*5+10);
  line(360, height/16*5, 360, height/16*5+20);
  line(370, height/16*5, 370, height/16*5+20);
  line(380, height/16*5, 380, height/16*5+20);
  line(390, height/16*5, 390, height/16*5+20);
  line(400, height/16*5, 400, height/16*5+20);
  line(410, height/16*5, 410, height/16*5+20);
  line(420, height/16*5, 420, height/16*5+20);
  line(430, height/16*5, 430, height/16*5+20);
  line(440, height/16*5, 440, height/16*5+20);

  //screen
  fill(0);
  noStroke();
  rect(200, 335, 400, 110, 7);
  fill(#d60000);
  //H
  ellipse(215, 350, 15, 15);
  ellipse(215, 370, 15, 15);
  ellipse(215, 390, 15, 15);
  ellipse(215, 410, 15, 15);
  ellipse(215, 430, 15, 15);
  ellipse(235, 390, 15, 15);
  ellipse(255, 350, 15, 15);
  ellipse(255, 370, 15, 15);
  ellipse(255, 390, 15, 15);
  ellipse(255, 410, 15, 15);
  ellipse(255, 430, 15, 15);

  //E
  ellipse(295, 350, 15, 15);
  ellipse(315, 350, 15, 15);
  ellipse(335, 350, 15, 15);
  ellipse(295, 370, 15, 15);
  ellipse(295, 390, 15, 15);
  ellipse(315, 390, 15, 15);
  ellipse(335, 390, 15, 15);
  ellipse(295, 410, 15, 15);
  ellipse(295, 430, 15, 15);
  ellipse(315, 430, 15, 15);
  ellipse(335, 430, 15, 15);

  //L
  ellipse(375, 350, 15, 15);
  ellipse(375, 370, 15, 15);
  ellipse(375, 390, 15, 15);
  ellipse(375, 410, 15, 15);
  ellipse(375, 430, 15, 15);
  ellipse(395, 430, 15, 15);
  ellipse(415, 430, 15, 15);

  //L
  ellipse(455, 350, 15, 15);
  ellipse(455, 370, 15, 15);
  ellipse(455, 390, 15, 15);
  ellipse(455, 410, 15, 15);
  ellipse(455, 430, 15, 15);
  ellipse(475, 430, 15, 15);
  ellipse(495, 430, 15, 15);

  //O
  ellipse(535, 350, 15, 15);
  ellipse(535, 370, 15, 15);
  ellipse(535, 390, 15, 15);
  ellipse(535, 410, 15, 15);
  ellipse(535, 430, 15, 15);
  ellipse(555, 430, 15, 15);
  ellipse(575, 430, 15, 15);
  ellipse(575, 410, 15, 15);
  ellipse(575, 390, 15, 15);
  ellipse(575, 370, 15, 15);
  ellipse(575, 350, 15, 15);
  ellipse(555, 350, 15, 15);
  
  //Control Panel
  noFill();
  stroke(0);
  strokeWeight(1);
  rect(300,475,200,85);
  fill(#FEFF4B);
  ellipse(325,500,20,20);
  ellipse(350,500,20,20);
  ellipse(375,500,20,20);
  ellipse(400,500,20,20);
  fill(0);
  rect(315,525,95,20);
  fill(#D60000);
  noStroke();
  triangle(465, 490, 490, 548, 440, 548);
  

  //light
  stroke(0);
  strokeWeight(3);
  line(width/16 * 8, 10, width/16 * 8, height/ 16 * 1);
  rectMode(CENTER);

  fill(#FEFF4B);
  beginShape();
  curveVertex(width/2-10, 120);
  curveVertex(width/2-10, 80);
  curveVertex(width/2-15, 35);
  curveVertex(width/2+15, 35);
  curveVertex(width/2+10, 80);
  curveVertex(width/2+10, 120);
  endShape();

  noFill();  //Filament
  ellipse(width/2 - 8, 45, 4, 4);
  ellipse(width/2 - 4, 45, 4, 4);
  ellipse(width/2, 45, 4, 4);
  ellipse(width/2 + 4, 45, 4, 4);
  ellipse(width/2 + 8, 45, 4, 4);

  fill(0);
  rect(width/2, 86, 25, 25);
  
  save("MelachrinosMatthew_ROBOT.png");
}