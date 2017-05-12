/*
Matt Melachrinos | mattmelachrinos.com
 
illustrative porting of 10 PRINT CHR$(205.5+RND(1)); : GOTO10
Creative Programming 1 with Jeff Thompson
*/

void setup() {
  size(600, 600);
  background(0);
  fill(255);
}

void forwardSlash(int x, int y) {
  beginShape();
  vertex(x, y);
  vertex(x+20, y);
  vertex(x+60, y+40);
  vertex(x+60, y+60);
  vertex(x+40, y+60);
  vertex(x, y+20);
  endShape(CLOSE);
}
void backSlash(int x, int y) {
  beginShape();
  vertex(x+60, y);
  vertex(x+60, y+20);
  vertex(x+20, y+60);
  vertex(x+0, y+60);
  vertex(x+0, y+40);
  vertex(x+40, y+0);
  endShape(CLOSE);
}

void draw() {
  for (int x = 0; x< 600; x += 60 ) {
    for (int y = 0; y < 600; y+= 60) {
      if (random(1) < .5)
        forwardSlash(x, y);
      else
        backSlash(x, y);
    }
  }
  fill(0, 20);  
  rect(0, 0, 600, 600);
  fill(255);
}