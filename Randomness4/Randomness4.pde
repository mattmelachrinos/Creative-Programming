/*
Matt Melachrinos | mattmelachrinos.com
 
 Randomness Lecture pt.4
 perlin noise
 Creative Programming 1 with Jeff Thompson
 */

float detail = 0.6;          // 0-1
float increment = .002;      // how quickly we move through the noise
color[] colors = {
  color(255,150,0),
  color(150,255,0),
  color(0,150,255),
  color(150,0,255)
};

void setup() {
  size(800, 800);
  cursor(CROSS);        
  
  noiseDetail(8,detail);

  loadPixels();
  for(int x = 0; x < width; x++){
    for(int y = 0; y < height; y++){
      
      //noise() returns value 0-1
      float gray = noise(x*increment,y*increment) * 255;
      
      pixels[y*width + x]=color(gray);
    }
  }
  
  
  updatePixels();
}