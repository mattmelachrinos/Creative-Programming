/*
Matt Melachrinos | mattmelachrinos.com
 
Final Project
The Hip Hop Analyzer
Creative Programming 1 with Jeff Thompson
*/
import ddf.minim.*;
import java.util.*;
import java.io.*;
Minim minim;
AudioPlayer song;

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
  size(1500, 800);
  background(255);
  loadAnnotations();
  minim = new Minim(this);
  // this loads mysong.wav from the data folder
  song = minim.loadFile("KendrickLamarDNA.wav");
  lyrics = loadImage("lyrics.png");
  album = loadImage("info.png");
  triangle = loadImage("Triangle.png");
  play = loadImage("play.png");
  pause = loadImage("pause.png");
  image(lyrics,100,lyricsY);
  image(album,1300,25);
  image(triangle,50,320);
 // rect(1200,675,100,100); 
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
  image(album,1300,25);
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
 try (BufferedReader br = new BufferedReader(new FileReader("annotations.txt"))) {
    String line;
    while ((line = br.readLine()) != null) {
       // process the line.
    }
} 
}