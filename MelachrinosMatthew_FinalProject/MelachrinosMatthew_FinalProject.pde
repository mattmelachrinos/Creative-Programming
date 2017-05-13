/*
Matt Melachrinos | mattmelachrinos.com
 
Final Project
The Hip Hop Analyzer
Creative Programming 1 with Jeff Thompson
*/
import ddf.minim.*;
import java.util.*;
Minim minim;
AudioPlayer song;

File file = new File("annotations.txt");
String letterPressed = "a";
int asciiCode;
int time;
PImage lyrics, album, triangle, play, pause;
int lyricsY = 300;
int[] times = {1758,4737,8100,11610,15000,18000,21800,25263,29200,32150,35600,39000,42500,45900,49350,52800,56650,59675,63100,66500,69930,73360,76710,80600,84000,87050,90150,94800,97200,100700,104000,107500};
int position = 0;
int startingTime = 0;
int stopTime = 0;
ArrayList annotations = new ArrayList();

void setup() {
  loadAnnotations();
  size(1500, 800);
  background(255);
  minim = new Minim(this);
  // this loads mysong.wav from the data folder
  song = minim.loadFile("KendrickLamarDNA.wav");
  lyrics = loadImage("lyrics.png");
  album = loadImage("info.png");
  triangle = loadImage("Triangle.png");
  play = loadImage("play.png");
  pause = loadImage("pause.png");
  image(lyrics,100,lyricsY);
  image(album,1200,25);
  image(triangle,50,320);
  image(play,1200,675);
}


void draw(){
  if(startingTime !=0 && song.isPlaying()) {
    if (millis()-startingTime >times[position])
      moveLyrics();
  }
}



void keyPressed(){
  asciiCode = key;
  letterPressed = Character.toString(key);
  
  if(key== 32){
    if(song.isPlaying())
      stopMusic();
    else
      startMusic();
  
  }
}
void mousePressed(){
  if(mouseX >= 1200 && mouseX <= 1300){
    if(mouseY >= 675 && mouseY <= 775){ 
      if(song.isPlaying())
        stopMusic();
      else
        startMusic();
    }
  }
}
void startMusic(){
  if (startingTime == 0)
    startingTime = millis();
  else
    startingTime +=millis()-stopTime;
    
  image(pause,1200,675);
  song.play();
  
  fill(255);
  noStroke();
  rect(0,0,width,height);
  image(lyrics,100,lyricsY);
  image(album,1200,25);
  image(triangle,50,320);
  image(pause,1200,675);


}

void stopMusic(){
  stopTime = millis();
  image(play,1200,675);
  song.pause();
  
}


void moveLyrics(){
  
  lyricsY -= 54;
  image(lyrics,100,lyricsY);
  position +=1;
}


void loadAnnotations(){
  String A = "Kendrick’s mom taught him the value of loyalty, as he described on 2010’s “Cut You Off (To Grow Closer). In a 2015 interview with The Breakfast Club, he spoke about his loyalty: I’m loyal to the soil. At the end of the day, you want to always have real people around you. Period. Whether it’s male or female. Everybody that’s been around me, they’ve been around since day one.";
  annotations.add(A);
  A = "Kendrick has addressed his family’s history of selling cocaine several times. On 2010’s “Night Of The Living Junkies,” he talked about how his uncles sold drugs in front of his house, and on Pusha T’s 2013 song “Nosetalgia,” he rapped about his father’s days of dealing dope:My daddy turned a quarter piece to a four and a halfTook a L, started selling soap fiends bubble bath";
  annotations.add(A);
  A = "Kendrick’s personality traits align with those of the people around him. While commenting on “The Blacker The Berry” during a 2015 MTV interview, Kendrick said: A few people think it’s just talk and it’s just rap; no, these are my experiences. When I say, ‘Gang banging made me kill a nigga blacker than me,’ this is my life that I’m talking about. I’m not saying you, you might not even be from the streets. I’m not speaking to the community, I’m not speaking of the community, I am the community.";
  annotations.add(A);
  A = "Kendrick compares his birth to the Immaculate Conception of the Virgin Mary. Catholics believe that the Virgin Mary was free from sin since she had to give birth to Christ. Yeshua is Hebrew for Jesus. Kendrick discussed the return of Yeshua in his guest feature on DJ Khaled’s “Holy Key”: I don’t wear crosses no more, Yeshua’s coming back";
  annotations.add(A);
}