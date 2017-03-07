/*
Matt Melachrinos | mattmelachrinos.com
 
push pop matrix
Creative Programming 1 with Jeff Thompson
*/

void setup() {
  size(800,800);
  background(100);
 
  stroke(255);
  strokeWeight(4);
  strokeCap(ROUND);
  //line(400,350,400,450);
  //line(400,350,380,370);
  //line(400,350,420,370);
  
  pushMatrix();          //local mode
  for (int x = 0; x < width; x +=50){
    for (int y = 0; y < height; x += 50){
  translate(100,100);   //moves origin

      arrow(); 
    }
  }
  popMatrix();           //reset to normal
  
}


void arrow(){
  line(0,-50,0,50);
  line(0,-50,-20,-30);
  line(0,-50,20,-30);
}