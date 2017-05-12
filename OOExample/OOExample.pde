/*
Matt Melachrinos | matthewmelachrinos.xyz

Basic Object Oriented Programming
Creative Programming 1 with Jeff Thompson
*/

Square s,s2;

void setup(){
 size(800,800); 
 
 //create an instance of the square class
 s = new Square();
 s2 = new Square();
}

void draw(){
 background(50); 
 s.display();
 s.update();
 s2.display();
 s2.update();
}

class Square{ 
  //attributes
 float x,y;
 float w = 10;
 
 //constructor
 //called everytime a new instance of the class is made
 Square(){
  x = random(0,width);
  y = random(0,height);
 }
 
 //methods
 void display(){
  rectMode(CENTER);
  fill(255);
  noStroke();
  rect(x,y,w,w);
 }
 
 void update(){
   w *=1.01;
 }
}