int second, minute, hour;
int sec, min, hr;
int xCenter, yCenter;
float secAngle;

void setup() {
  size(600, 600);
  //frameRate(1);
  
  second = second();
  minute = minute();
  hour = hour();

  xCenter = width/2;
  yCenter = height/2;
}

void draw() {
  clockFace(width/2, height/2, 500);


  drawHand(xCenter, yCenter, 10, secAngle);
  //drawHand(xCenter, yCenter, min);
  //drawHand(xCenter, yCenter, hr);

  updateTime();
}

void clockFace(int xOffset, int yOffset, int radius) {
  circle(xOffset, yOffset, radius);
}

void updateTime() {
  //while (sec % 60 == 0) {
  // min++; 
  // sec = 0;
  //}
  //while (min % 60 == 0) {
  // hr++;
  // min = 0;
  //}
  //sec++;
}

float timeToAngle(float secAngle) {
  secAngle = PI/60 * sec;
  //float minAngle = PI/60 * min;
  //float hrAngle = PI/12 * hr;
  
  return secAngle;
  //return minAngle;
  //return hrAngle;
}

void drawHand(int xOffset, int yOffset, int handLength, float angle) {
  timeToAngle(sec);

  line(xOffset, yOffset, handLength * cos(angle), handLength * sin(angle));
}
