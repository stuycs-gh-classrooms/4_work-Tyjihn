float sec, hr, min, hrAngle, secAngle, minAngle;
int xCenter, yCenter, radius;
int hrHandLength, minHandLength, secHandLength;

int randomR, randomG, randomB;

float angle, spiralAngle, xOffset, yOffset;
int dotDiameter;
int sinAmplitude;
int circRadius;
int spiralRadius;
int petalRadius;

void setup () {
  size (600,600);
  background (#EDFFF9);
  frameRate (200);
  sec = second();
  min = minute();
  hr = hour();
  xCenter = width/2;
  yCenter = height/2;
  
  dotDiameter = 4;
  angle = 0;
  spiralAngle = 0;
  changeColor();
}

void draw () {
  changeColor();
  
  stroke(0);
  fill(#D3D3D3);
  clockFace (xCenter, yCenter, 350);
  drawHand (xCenter, yCenter);
  
  changeColor();
  drawPattern(angle, 100, 300, 300);
  otherGraph (angle, 300, xOffset, yOffset);
  angle += 0.05;
  
  stroke(0);
  clockFace (xCenter, yCenter, 350);
  drawHand (xCenter, yCenter);
  
  if (frameCount % 200 == 0) {
  updateTime ();
  }
}

void clockFace (int xOffset, int yOffset, int radius) {
  strokeWeight (2);
  circle (xOffset, yOffset, radius);
}

void updateTime () {
  if (sec % 59 == 0) {
    min ++;
    sec = 0;
  }
  if (min % 59 == 0 && sec % 59 == 0) {
    hr++;
    min = 0;
  }
  if (hr == 12) {
    hr = 0;
  }
  sec++;
  println(sec, min, hr);
}

float timetoAngle (String time) {
  if (time == "hr") {
    float hrAngle = hr*30;
    return radians (hrAngle);
  }
  else if (time == "min") {
    float minAngle = min*6;
    return radians (minAngle);
  }
  else if (time == "sec") {
    float secAngle = sec*6;
    return radians (secAngle);
  }
  return 0;
}

void drawHand (int xCenter, int yCenter) {
  strokeWeight (7);
  stroke(#0034BF);
  line (xCenter, yCenter, xCenter + handLength("hr") * cos(timetoAngle("hr")), yCenter + handLength("hr") * sin(timetoAngle("hr")));
  strokeWeight (4);
  stroke(#9300D3);
  line (xCenter, yCenter, xCenter + handLength("min") * cos(timetoAngle("min")), yCenter + handLength("min") * sin (timetoAngle("min")));
  strokeWeight (3);
  stroke(#00BF8D);
  line (xCenter, yCenter, xCenter + handLength("sec") * cos(timetoAngle("sec")), yCenter + handLength("sec") * sin(timetoAngle("sec")));
}

int handLength(String Length) {
 if (Length == "hr") {
    int hrHandLength = 100;
    return hrHandLength;
  }
  else if (Length == "min") {
    int minHandLength = 120;
    return minHandLength;
  }
  else if (Length == "sec") {
    int secHandLength = 160;
    return secHandLength;
  }
  return 0;
}

void drawPattern(float degrees, float radius, float xOffset, float yOffset) {
  stroke(randomR, randomG, randomB);
  xOffset = 3*radius * cos(radians(4 * degrees)) + xOffset;
  yOffset = 3*radius * sin(radians(11 * degrees)) + yOffset;
  circle(xOffset, yOffset, dotDiameter);
}

void otherGraph (float degrees, int r, float x, float y) {
  xOffset = width/2;
  yOffset = height/2;
  y = r * sin (100 *(radians (degrees)))* sin(radians(degrees));
  x = r * cos(radians(degrees)) * cos (100 * (radians (degrees)));
  circle (x + xOffset, y + yOffset, dotDiameter);
}

void changeColor() {
  if (frameCount % 100 == 0) {
    randomR = int(random(100, 255));
    randomG = int(random(100, 255));
    randomB = int(random(100, 255));
    stroke(randomR, randomG, randomB);
  }
}
