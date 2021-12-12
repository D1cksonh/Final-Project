Bubble[] bubbles = new  Bubble[999]; //change the 100 to change the # of bubbles

import processing.sound.*;
SoundFile song;
Amplitude analyzer;

void setup() {
 size(640,360);
 song = new SoundFile(this,"song.mp3");
 song.loop();
 analyzer = new Amplitude(this);
 analyzer.input(song);
 
 for (int i = 0; i < 999; i++){ // change the 100 to change # of bubbles
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
 /*
 backgroundBox();
 selectionBox();
 selectionText();
 */
 information();
 bar();
 
 println(total);
}
