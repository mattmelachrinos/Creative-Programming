/*
Matt Melachrinos | mattmelachrinos.com
 
 Randomness Lecture pt.3
 Random Choices
 Creative Programming 1 with Jeff Thompson
 */

float x, y, px, py;
color[] colors = {
  color(255,150,0),
  color(150,255,0),
  color(0,150,255),
  color(150,0,255)
};

void setup() {
  size(800, 800);
  cursor(CROSS);        
  background(50);

  x = px = width/2;
  y = py = height/2;
}
void draw() {
  //stroke(255);
  line(x, y, px, py);
  stroke( colors[int(random(0,colors.length))]);
  px = x;
  py = y;

  if (random(1) < .5) {
    if (random(1) < .5)    // 50/50 chance
      x -= 8;

    else
      x +=8;
  } else {
    if (random(1) < .5)    // 50/50 chance
      y -= 8;

    else
      y +=8;
  }
}