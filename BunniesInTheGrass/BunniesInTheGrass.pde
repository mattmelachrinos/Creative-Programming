/*
Matt Melachrinos | matthewmelachrinos.xyz

ArrayList
Creative Programming 1 with Jeff Thompson
*/
int numRabbits = 5;
ArrayList <Rabbit> rabbits = new ArrayList<Rabbit>();

void setup(){
 size(800,800); 
  for (int i = 0; i < numRabbits ; i++){
    Rabbit r = new Rabbit(random(width), random (height));
    rabbits.add(r);
  
  }
 //create an instance of the square class

}

void draw(){
 background(15,190,25); 
 
 //for (Rabbit r : rabbits){
 //  r.display();
 //  r.update();
 //}
 
 for (int i = rabbits.size() -1; i>=0 ; i -=1){
   Rabbit r = rabbits.get(i);
   r.display();
   r.update();
   if (r.age>3)
     rabbits.remove(r);
 }
 
 if(random(1) < 0.01){
  Rabbit r = new Rabbit(width/2, height/2);
  rabbits.add(r);
 }
}

class Rabbit{ 
 //attributes
 float x,y;
 float speedX,speedY;
 float age = 1;
 float direction = 1; //1 = facing right, -1 = facing left
 PImage body;
 
 //constructor
 //called everytime a new instance of the class is made
 Rabbit(float _x, float _y){
  x = _x;
  y = _y;
  speedX = random(-6,6);
  if (speedX <0)
    direction = -1;
  speedY = random(-3,3);
  body = loadImage("Rabbit.png");
 }
 
 //methods
 void display(){
  imageMode(CENTER);
  pushMatrix();
  translate(x,y);
  scale(age * direction,age);
  image(body,0,0);
  popMatrix();
 }
 void update(){
  x += speedX;
  y += speedY;
  age += .005;
  if(x >=width || x <=0){
    speedX = -speedX; 
    direction *= -1;
  }

  if(y >=height || y <=0){
    speedY = -speedY; 
  }
 }

}