class Bubble {
  float x = width/2;
  float y = height/2;
  float xspeed = random(-5,5); 
  float yspeed = random(-5,5);
  float redX = random(255);
  float greenX = random(255);
  float blueX = random(255);
  
  void ascend() {
   x = x + xspeed;
   y = y - yspeed; 
  }
  
  void display(){
   float volume = analyzer.analyze();
   fill(redX,greenX,blueX,volume*300);
   noStroke();
   ellipse(x,y,10+volume*50, 10+volume*50);
  }
  
  void top() { 
    if (y < 0 || y > height-150) {
     yspeed = yspeed * -1; 
    }
  }
}
