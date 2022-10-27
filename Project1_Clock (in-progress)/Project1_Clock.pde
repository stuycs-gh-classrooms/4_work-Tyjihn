int second, minute, hour;
int sec, min, hr;
int xCenter, yCenter;

void setup() {
  size(600, 600);
  frameRate(1);

  second = second();
  minute = minute();
  hour = hour();

  sec = second;
  min = minute;
  hr = hour;

  xCenter = width/2;
  yCenter = height/2;
}

void draw() {
  clockFace(width/2, height/2, 500);


  drawHand(xCenter, yCenter, 200, sec);
  //drawHand(xCenter, yCenter, min);
  //drawHand(xCenter, yCenter, hr);
  
  sec++;
  updateTime();
}

void clockFace(int xOffset, int yOffset, int radius) {
  circle(xOffset, yOffset, radius);
}

void updateTime() {
  if (sec % 60 == 0) {
    min++;
    sec = 0;
  }
  if (min % 60 == 0) {
    hr++;
    min = 0;
  }
  if (hr % 12 == 0) {
    hr = 0;
  }
}

float timeToAngle(float secAngle) {
  secAngle += PI/30;
  //float minAngle = PI/30 * min;
  //float hrAngle = PI/6 * hr;

  return secAngle;
  //return minAngle;
  //return hrAngle;
}

void drawHand(int xOffset, int yOffset, int handLength, float angle) {

  //line(xOffset, yOffset, xOffset + handLength*cos(angle), yOffset + handLength*sin(angle));
  line(xOffset, yOffset, xOffset + handLength * cos(timeToAngle(angle)), yOffset + handLength * sin(timeToAngle(angle)));
}

// take actual time
// convert time to angle, return value
// draw hand using angle
// +1 second per frame, increase in angle by PI/30 or PI/6
// update time

