float rateX = 1;
float ampX = 1;
float freqX = 150;

void songSetup() {
  song.amp(ampX);
  song.rate(rateX);
}

void keyPressed (){
  if(key == '1') {
   total = total - 1; // removes bubbles 
  }if(key == '2') {
    rateX += 0.5;
  }if(key == '3') {
    rateX -= 0.5;
  }if(key == '4') {
    ampX += 1;
  }if(key == '5') {
    ampX -= 1;
  }if(key == '6') {
    freqX += 10;
  }if(key =='7') {
    freqX -= 10;
  }
}

void songBugs() {
  if(rateX <= 0) {
   rateX = 0.5; 
  }
}
