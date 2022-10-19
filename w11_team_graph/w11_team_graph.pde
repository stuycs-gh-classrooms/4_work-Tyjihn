//All three "graphs" will use these variables
float angle; //The degree angle we will use for sin() and cos() functions.
int dotDiameter;//The size of the circle that will be graphing.

int sinAmplitude;
int circRadius;
int spiralRadius;
int petalRadius;

void setup() {
  size(600, 600);
  background(0);
  frameRate(120);
  
  dotDiameter = 4;
  sinAmplitude = 100;
  circRadius = 100;
  spiralRadius = 100;
  petalRadius = 100;
  angle = 0;
  stroke(255);
}//setup

void draw() {
  drawPattern(angle, petalRadius, sinAmplitude*2, circRadius*2);
  
  angle += 0.1;
}

void drawPattern(float degrees, float radius, float xOffset, float yOffset) {
  
  xOffset = 2*radius * cos(radians(4 * degrees)) + xOffset;
  yOffset = 2*radius * sin(radians(11 * degrees)) + yOffset;
  
  circle(xOffset, yOffset, dotDiameter);
}
