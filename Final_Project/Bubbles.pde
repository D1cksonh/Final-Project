class Bubble {
  float x;
  float y;
  float xspeed = random(-5,5); 
  float yspeed = random(-5,5);
  float redX = random(255);
  float greenX = random(255);
  float blueX = random(255);
  
  Bubble() {
   x = width/2;
   y = height/2; 
  }
  
  void ascend() {
   x = x + xspeed;
   y = y - yspeed; 
   //x = x - xspeed;
  }
  
  void display(){
   float volume = analyzer.analyze();
   fill(redX,greenX,blueX,volume*300);
   noStroke();
   ellipse(x,y,10+volume*50, 10+volume*50);
  }
  
  void top() { 
    if (y < 0 || y > height) {
     yspeed = yspeed * -1; 
    }
  }
}
