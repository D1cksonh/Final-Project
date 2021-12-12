float text1 = 415;
float text2 = 800;

void information() {
  fill(255);
  stroke(255);
  textSize(15);
  text("Press 1 to Increase Speed",10,270);
  text("Press 2 to Decrease Speed",10,300);
  
  textSize(30);
  text("<",380,280);
  text(">",580,280);
  
  textSize(11);
  fill(0);
  text("Twenty One Pilots - Shy Away",text1,275);
  text("Zankyou Sanka - Aimer",text2,275);
  
  textSize(15);
  text("Play",475,318);
}

void selectionBox() {
  fill(255);
  rect(400,260,180,25);
  
  fill(255,0,0); // left arrow
  rect(380,260,30,25);
  
  fill(0,255,0); // right arrow
  rect(580,260,30,25);
  
  fill(0,255,0); // play button
  rect(460,300,60,25);
}

void mousePressed() {
 if(mouseX < 610 && mouseX > 580 && mouseY < 285 && mouseY > 260 && text1 == 415) {
   text1 = 700;
   text2 = 415;
 }
 if(mouseX < 410 && mouseX > 380 && mouseY < 285 && mouseY > 260 && text2 == 415) {
   text1 = 415;
   text2 = 700;
 }
 
 if(mouseX < 520 && mouseX > 460 && mouseY < 285 && mouseY > 260) {
  background(255,0,0); 
 }
}
