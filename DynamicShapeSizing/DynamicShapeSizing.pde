/*
Matt Melachrinos | matthewmelachrinos.xyz

Width height manipulation
Creative Programming 1 with Jeff Thompson
*/

void setup(){
  size(600,600);        //sets variables width and height
  background(100);
  
  //dynamic shape
  ellipse(width/2,height/2, 300,300);

  rect(width-100, height-100, 50, 50);

  stroke(255,150,0);
  strokeWeight(5);
  line(width/2,height/2-100, width/2,height/2+100);
  line(width/2-100,height/2, width/2+100, height/2);
  save("plusSignDrawing.png");
}