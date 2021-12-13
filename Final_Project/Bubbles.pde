class Bubble { // class for the smaller bubbles comming away from the middle, the code here is inspirted from the coding train, i modified it for the sizes to react to the beat
  float x = width/2;
  float y = height/2;
  float xspeed = random(-5,5); 
  float yspeed = random(-5,5);
  float redX = random(255);
  float greenX = random(255);
  float blueX = random(255);
  
  void movement() {
   x = x + xspeed;
   y = y - yspeed; 
  }
  
  void display(){
   float volume = analyzer.analyze();
   fill(redX,greenX,blueX,volume*300);
   noStroke();
   ellipse(x,y,10+volume*50, 10+volume*50);
  }
  
  void Edge() { 
    if (y < 0 || y > height-150) {
     yspeed = yspeed * -1; 
    }
  }
}
