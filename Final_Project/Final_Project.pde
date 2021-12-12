int total = 0;
Bubble[] bubbles = new  Bubble[100]; //change the 100 to change the # of bubbles

import processing.sound.*;
SoundFile song;
Amplitude analyzer;

void setup() {
 size(640,360);
 song = new SoundFile(this,"song.mp3");
 song.loop();
 analyzer = new Amplitude(this);
 analyzer.input(song);
 
 for (int i = 0; i < 100; i++){ // change the 100 to change # of bubbles
   bubbles[i] = new Bubble(); 
 }
}

void mousePressed () { 
  total = total + 1; // adds bubbles 
}

void draw() {
 background(255); 
 for (int i = 0; i < total; i++){ 
   bubbles[i].ascend();
   bubbles[i].display(); 
   bubbles[i].top();
 }
 
 song.rate(rateX);
 song.amp(ampX); // volume --> values has to be -1 >= x <= 1
 
 //Non-music stuff
 bar();
}
