class Bubble {
  float x;
  float y;
  float yspeed = 5;
  
  Bubble() {
   x = random(width/2);
   y = height; 
  }
  
  void ascend() {
   y = y - yspeed; 
  }
  
  void display(){
   float volume = analyzer.analyze();
   fill(127);
   stroke(0);
   ellipse(x,y,10+volume*50, 10+volume*50);
  }
  
  void top() { 
    if ( y < 0 || y > height) {
     yspeed = yspeed * -1; 
    }
  } 
  
}
