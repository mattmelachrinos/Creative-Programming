/*
Matt Melachrinos | mattmelachrinos.com
 
usings loops and shit when drawing
Creative Programming 1 with Jeff Thompson
*/

void setup() {
  size(800,800);
  background(100);
  
  int count = 10;
  while (count >= 10){
    count -= 1;
  }
  
  stroke(0);
  
  //GRID
  //for(int i = 0; i <width; i+=10){
  //  line(i,0,i,height);
  //  line(0,i,width,i);
  //}
  
  
  //RED GRADIENT
  float red = 0;
  
  for(int i = 0; i < width; i+=50){
   red = map(i,0,width,0,255);
   fill(red,0,0);
   rect(i,0,50,height);
  }
  
}