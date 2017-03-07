/*
Matt Melachrinos | matthewmelachrinos.xyz

First time using processing.
Creative Programming 1 with Jeff Thompson
*/

void setup(){
  println("Hello, World!");
  
  size(800,800);                //Sets window size in pixel
  background(172,240,195);      //Sets window background color, RGB
  
  fill(0,150,255);              //global setting for all shapes made before next fill declaration
  stroke(0);                    //same as above
  //rect(100,100,50,50);          //(x,y,width, height)
  //ellipse(100,100,50,50);       //(x centerpoint, y centerpoint, width, height)
  fill(0,150,255,100); 
  noStroke();
  //ellipse(100,100,100,100);
  stroke(0);
  strokeWeight(5);
  //line(0,0,800,800);
  triangle(0,0, 400,400, 800,0);
  triangle(0,0, 400,400, 0,800);
  triangle(800,0, 600,200, 800,400);
  
  
  beginShape();
  vertex(600,200);
  vertex(800,400);
  vertex(600,600);
  vertex(400,400);
  endShape();
  
  triangle(800,400, 800,800, 400,800);
  triangle(400,400, 600,600, 200,600);
  
  beginShape();
  vertex(0,800);
  vertex(200,600);
  vertex(600,600);
  vertex(400,800);
  endShape();
  
}