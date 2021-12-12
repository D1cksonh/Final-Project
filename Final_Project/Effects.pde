// This code is for changing the music

float rateX = 1;
float ampX = 1;

void songSetup() {
  song.amp(ampX);
  song.rate(rateX);
}

void keyPressed (){
  if(key == '1') {
    rateX += 0.2;
  }if(key == '2') {
    rateX -= 0.2;
  }if(key == '3') {
    ampX += 1;
  }if(key == '4') {
    ampX -= 1;
  }
}

void songBugs() {
  if(rateX <= 0) {
   rateX = 0.2; 
  }
}

void flashBackground() {
  float volume = analyzer.analyze();
  fill(redX,greenX,blueX,10+volume*100); //redX,greenX and blueX values are in "circles tab
  rect(0,0,640,230);
}
