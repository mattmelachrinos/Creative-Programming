/*
Matt Melachrinos | mattmelachrinos.com
 
Recursion
Creative Programming 1 with Jeff Thompson
*/

/*Recursion
    1. initial values
    2. exit condition (base case)
*/
void setup() {
  size(600, 600);        //sets variables width and height
  background(#CECECE);
  
  //for(int x = 0; x<width; x+=10){
  //  line(x,0,x,height);
  //}
  recursiveLine(600);
}

void recursiveLine(int x){
  line(x,0,x,height);
  x/=1.5;
  if (x >0){
    recursiveLine(x);
  }
  
}