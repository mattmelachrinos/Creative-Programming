/*
Matt Melachrinos | mattmelachrinos.com
 
push pop matrix
Creative Programming 1 with Jeff Thompson
*/

PImage img;    // the PImage class is used to load/display raster images


void setup() {
  size(750,491);
  noCursor();
  img = loadImage("Sunset.jpg");

loadPixels();
println("First pixel's value is: " + pixels[0]);




//these methods are kinda slow
float r = red(pixels[0]);
float g = green(pixels[0]);
float b = blue(pixels[0]);
println(r + ", " + g + ", " + b);


//faster method
r = pixels[0] >> 16 & 0xFF;
g = pixels[0] >> 8 & 0xFF;
b = pixels[0] & 0xFF;



int x = width/2;
int y = height/2;

color centerPx = pixels[y * width + x];

for(int i = 0; i <2000; i +=1){
  x = int(random(0,width));
  y = int(random(0,height));
  r = random(255);
  g = random(255);
  b = random(255);
  pixels[y*width+x] = color(r,g,b);
}
  updatePixels();
}