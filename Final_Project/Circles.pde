float rectX = 50;
float moveX = 30;
float redX, blueX, greenX = random(255);

void bigCircle() {
 float volume = analyzer.analyze();
 fill(redX,blueX,greenX);
 noStroke();
 ellipse(width/2,height/2,10+volume*200, 10+volume*200); // size changes depending on the "beat" of the song
 
 println(10+volume*200);
}

void cubeCounter() {
 rect(rectX,50,25,25);
 rectX = rectX + moveX;
 
 if(rectX > 800 || rectX < 0) {
    moveX *= -1;
    redX = random(255);
    greenX = random(255);
    blueX = random(255);
    total += 1;
 }
}
