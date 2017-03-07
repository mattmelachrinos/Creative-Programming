/*
 Matt Melachrinos | mattmelachrinos.com
 
 Recursion Project
 Creative Programming 1 with Jeff Thompson
 */

float initialRadius = 500;
float minRadius = 2;

void setup() {
  size(800, 800);        //sets variables width and height
  background(#FFFFFF);
  noStroke();
  fill(0);
  //for(int x = 1; x<800; x++){
  //  for(int y = 1; y<800; y++) {
  //    factorialDrawer(x,y);
  //  }
  //}
  
  factorialDrawer(6000);
  save("MelachrinosMatthew_RECURSION.png");
}
int factorialDrawer(int x){
  int result;
  if(x == 0 || x == 1)
  return 1;
  result = factorialDrawer(x-1) * x;
  if (result <0){
    result = -result/10000;
  }
  //loadPixels();
  //pixels[result%640000] = color(result%255,255-result%255,100);
  //updatePixels();
  //fill(x%255,x%234,x%223);
  fill(result%255);
  //rect(result%80,x%800,result/2%800,800-result/2%800);
  //rect(result%800,x%800,result/2%800,800-result/2%800);
  rect(result%800,x%800,800-result/9%800,800-x/8%800);
  return result;
}