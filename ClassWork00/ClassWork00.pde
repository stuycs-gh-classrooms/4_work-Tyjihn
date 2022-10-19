int x, y;
int circleRadius;
int circleX, circleY;
boolean changeDirection;

void setup() {
  size(600, 400);
  fill(255);
  frameRate(120);
  x = 0;
  y = 0;
  circleRadius = 25;
  circleY = circleRadius;
}

void draw() {
  background(0);
  if(circleY < height/2) {
   fill(0, 255, 0);
  }
  else {
   fill(255, 0, 0); 
  }
  
  rectCross(10);
  movingCircle(width/2, circleY, circleRadius*2);
  if(circleY + circleRadius == height) {
    changeDirection = true;
    }
  if(circleY - circleRadius == 0) {
    changeDirection = false;
  }
  if(changeDirection == true) {
   circleY--;
  }
  else {
   circleY++; 
  }
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
  circle(circleX, circleY, circleDiameter);
}
