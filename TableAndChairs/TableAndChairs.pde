/*
Matt Melachrinos | matthewmelachrinos.xyz

drawing of a table and chairs
Creative Programming 1 with Jeff Thompson
*/

void setup(){
  size(800,800);        //sets variables width and height
  background(#ffffff);
  fill(#836F56);
  noStroke();
  
  //Table
  rect(width/16 * 4, height/16 * 5 , width/16 * 8, height/16 * 1);
  rect(width/16 * 7, height/16 * 6 , width/16 * 2, height/16 * 5);
  rect(width/16 * 6, height/16 * 11, width/16 * 4, height/16 * 1);
  
  
  //Chair left
  rect(width/16 * 1, height/16 * 4, width/16 * 1, height/16 * 8);
  rect(width/16 * 2, height/16 * 8, width/16 * 3, height/16 * 1);
  rect(width/16 * 4, height/16 * 9, width/16 * 1, height/16 * 3);
  
  //Chair right
  rect(width/16 * 14, height/16 * 4, width/16 * 1, height/16 * 8);
  rect(width/16 * 11, height/16 * 8, width/16 * 3, height/16 * 1);
  rect(width/16 * 11, height/16 * 9, width/16 * 1, height/16 * 3);
  
  //light
  stroke(0);
  strokeWeight(3);
  line(width/16 * 8, height/ 16 * 0, width/16 * 8, height/ 16 * 1);
  rectMode(CENTER);
  fill(0);
  rect(width/2, height/ 16 * 1, 25,25);
  fill(#FEFF4B);
  beginShape();
  curveVertex(width/2-10,0);
  curveVertex(width/2-10,65);
  curveVertex(width/2-15,110);
  curveVertex(width/2+15,110);
  curveVertex(width/2+10,65);
  curveVertex(width/2+10,0);
  endShape();
  
  noFill();
  ellipse(width/2 - 8, 100, 4, 4);
  ellipse(width/2 - 4, 100, 4, 4);
  ellipse(width/2 , 100, 4, 4);
  ellipse(width/2 + 4, 100, 4, 4);
  ellipse(width/2 + 8, 100, 4, 4);
}