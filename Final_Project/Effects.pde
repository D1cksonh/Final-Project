float rateX = 1;
float ampX = 1;

void songSetup() {
  song.amp(ampX);
  song.rate(rateX);
}

void keyPressed (){
  if(key == '1') {
    rateX += 0.5;
  }if(key == '2') {
    rateX -= 0.5;
  }if(key == '3') {
    ampX += 1;
  }if(key == '4') {
    ampX -= 1;
  }if(key == '5') {
   song.stop();
   song2.loop();
  }
}

void songBugs() {
  if(rateX <= 0) {
   rateX = 0.5; 
  }
}

void flashBackground() {
  float volume = analyzer.analyze();
  fill(redX,greenX,blueX,10+volume*100); //redX,greenX and blueX values are in "circles tab
  rect(0,0,640,230);
}
