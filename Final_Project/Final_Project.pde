Bubble[] bubbles = new  Bubble[999]; 

import processing.sound.*;
SoundFile song;
Amplitude analyzer, analyzer2;

void setup() {
 size(640,360);
 song = new SoundFile(this,"song.mp3"); // Source: https://www.youtube.com/watch?v=3sO-Y1Zbft4
 song.loop();
 analyzer = new Amplitude(this);
 analyzer.input(song);
 
 for (int i = 0; i < 999; i++){ 
   bubbles[i] = new Bubble(); 
 }
}

void draw() {
 background(0);
 
 //Flashsing Background
 flashBackground();
 
 //Circle objects
 smallCircle();
 bigCircle();
 cubeCounter();
 
 //Changing aspects of the song
 songSetup();
 songBugs();
 
 //Misc. Stuff
 musicBox();
 information();
 bar();
 
 println(total);
}
