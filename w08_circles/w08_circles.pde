int movingX, movingY, radius;

void setup() {
  movingX = 50;
  movingY = 150;
  radius = 50;
  size(500, 500);
  fill(190, 115, 255);
  circleRow(50, 450, 50, 100);
  frameRate(180);
}

void draw() {
  background(255);//clear screen
  fill(190, 115, 255);
  circleRow(50, 450, 50, 100);
  fill(185, 250, 255);
  circle(movingX, movingY, 2*radius);
  movingX++;
  if (movingX + radius >= width) {
    movingY = movingY + 2 * radius;
    movingX = 50;
    
    if (movingY + radius > height) {
      movingY = 150;
    }
  }
}

void circleRow(int startX, int endX, int y, int d) {
  circle(endX, y, d);

  while (startX + d <= endX) {
    circle(startX, y, d);
    startX = startX + d;
  }
}
