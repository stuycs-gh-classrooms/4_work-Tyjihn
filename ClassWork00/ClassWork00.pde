int x, y;
int circleRadius;
int circleX, circleY;

void setup() {
  size(600, 400);
  fill(255);
  x = 0;
  y = 0;
  circleRadius = 50;
}

void draw() {
  background(0);
  rectCross(10);
  movingCircle(width/2, circleRadius, circleRadius*2);
}

void rectCross(int numRects) {
  while(x <= width) {
    rect(x, y, width/numRects, height/numRects);
    rect(x - width/numRects, height - y, width/numRects, height/numRects);
    x += width/numRects;
    y += height/numRects;
  }
  if(x > width) {
     x = 0;
     y = 0;
  }
}

void movingCircle(int circleX, int circleY, int circleDiameter) {
  //if (circleY <= height) {
  circle(circleX, circleY, circleDiameter);
  circleY++;
  //}
  //else {
  // circleY = circleRadius; 
  //}
}
