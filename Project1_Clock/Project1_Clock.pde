int sec, min, hr;

void setup() {
 size(600, 600);
 sec = second();
 min = minute();
 hr = hour();
 
}

void draw() {
  clockFace(width/2, height/2, 500);
}

void clockFace(int xOffset, int yOffset, int radius) {
  circle(xOffset, yOffset, radius);
}

void timeToAngle() {
 //sec = 2PI/sec; 
}
