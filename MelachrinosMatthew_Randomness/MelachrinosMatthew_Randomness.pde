/*
Matt Melachrinos | mattmelachrinos.com
 
Randomness Assignment
Creative Programming 1 with Jeff Thompson
*/

float x, y, px, py,lx,ly;
//color[] colors = {
//  color(255,150,0),
//  color(150,255,0),
//  color(0,150,255),
//  color(150,0,255)
//};
color[] colors = {
  color(255),
  color(175),
  color(100)
};
int asciiCode;
int increment = 10;


void setup() {
  size(1152, 720);
  background(50);

  x = px = lx = width/2;
  y = py = ly = height/2;
}
void draw() {
  //stroke(255);
  noFill();
  
  //arc(x, y, px, py,0,HALF_PI);
  line(x, y, px, py);
  line(y, x, px, py);
  line(y, x, lx, ly);

  stroke( colors[int(random(0,colors.length))]);
  //px = x;
  //py = y;

  if (random(1) < .5) {
    if (random(1) < .5)    // 50/50 chance
      x -= increment;

    else
      x +=increment;
  } else {
    if (random(1) < .5)    // 50/50 chance
      y -= increment;

    else
      y +=increment;
  }
  if (random(1) < .5) {
    if (random(1) < .5)    // 50/50 chance
      px -= increment;

    else
      px +=increment;
  } else {
    if (random(1) < .5)    // 50/50 chance
      py -= increment;

    else
      py +=increment;
  }
  //if (random(1) < .5)    // 50/50 chance
  //   rotate(PI);
  //else
  //   rotate(-PI);
    if (random(1) < .5) {
    if (random(1) < .5)    // 50/50 chance
      lx -= increment;

    else
      lx +=increment;
  } else {
    if (random(1) < .5)    // 50/50 chance
      ly -= increment;

    else
      ly +=increment;
  }
}


void mousePressed() {
  background(50);
  x = px = lx = width/2;
  y = py = ly = height/2;
}

void keyPressed() {
  asciiCode = key;  
  if (asciiCode== 115 || asciiCode== 83) {
    save("MelachrinosMatthew_Randomness" +day()+hour()+ second() +".png");
    println("Screenshot Saved");
  }
}