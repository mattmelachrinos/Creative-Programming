/*
Matt Melachrinos | mattmelachrinos.com
 
 Dog years clock
 Creative Programming 1 with Jeff Thompson
*/

  
import processing.sound.*;
SoundFile file;

PFont font;        // font to display the time
long prevMillis;   // keep track of the current time (used later)
int initialDogYear = 14119;
int daysSince2017;
int dogyearcheck = 14120;
void setup() {
  size(800, 800);
  pixelDensity(displayDensity());   // smooth fonts, please
  
  // font setup
  font = createFont("Arial", 100);
  textFont(font, 100);
  textAlign(CENTER);
  
  file = new SoundFile(this, "german-shephard-daniel_simon.mp3");
  
  // we can get the current time in a variety of formats
  //int sec =   second();
  //int min =   minute();
  //int hour =  hour();
  //int day =   day();
  //int month = month();
  //int year =  year();
  
  // this can be useful for timing events, as we'll see below
  prevMillis = millis();     // start our timer (used later in the sketch)
}


void draw() {
  background(255);
  
  if (month()==1){
    daysSince2017 = day();
  }
  else if (month()==2){
    daysSince2017 = day()+31;
  }
  else if (month()==3){
    daysSince2017 = day()+59;
  }
    else if (month()==4){
    daysSince2017 = day()+90;
  }
    else if (month()==5){
    daysSince2017 = day()+120;
  }
    else if (month()==6){
    daysSince2017 = day()+151;
  }
    else if (month()==7){
    daysSince2017 = day()+181;
  }
    else if (month()==8){
    daysSince2017 = day()+212;
  }
    else if (month()==9){
    daysSince2017 = day()+243;
  }
    else if (month()==10){
    daysSince2017 = day()+273;
  }
    else if (month()==11){
    daysSince2017 = day()+304;
  }
    else if (month()==12){
    daysSince2017 = day()+334;
  }
  int dogyears = daysSince2017/52;
  if (dogyears > dogyearcheck){
    file.play();
    dogyearcheck = dogyears;
  }
  fill(0);
  noStroke();
  text("Dog Year:",width/2,height/3);
  text(nfc(initialDogYear + dogyears),width/2,height/2);
  //text(nf(hour(),2) + ":" + nf(minute(),2) + ":" + nf(second(),2), width/2, height/2);
  save("MelachrinosMatt_Clocks.png");
}