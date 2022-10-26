float sec, min, hr;
int xCenter, yCenter;

void setup() {
  size(600, 600);
  sec = second();
  min = minute();
  hr = hour();

  xCenter = width/2;
  yCenter = height/2;
}

void draw() {
  clockFace(width/2, height/2, 500);


  drawHand(xCenter, yCenter, sec);
  drawHand(xCenter, yCenter, min);
  drawHand(xCenter, yCenter, hr);

  updateTime();
}

void clockFace(int xOffset, int yOffset, int radius) {
  circle(xOffset, yOffset, radius);
}

void updateTime() {
  sec = second();
  min = minute();
  hr = hour();
}

void timeToAngle() {
  sec = PI/21600 * sec;
  min = PI/360 * min;
  hr = PI/6 * hr;
}

void drawHand(int xOffset, int yOffset, float angle) {
  timeToAngle();

  line(xOffset, yOffset, xOffset + cos(angle), yOffset + sin(angle));
}
