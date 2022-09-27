void drawLightning(int x, int y, int numParts) {
  while (numParts > 0) {
    int nextx = int(random(x - 5, x + 6));
    int nexty = y + height / numParts;

    line(x, y, nextx, nexty);

    x = nextx;
    y = nexty;

    numParts = numParts - 1;
  }
}


void changeStroke() {
  strokeWeight(int(random(0, 8)));

  int randomR = int(random(0, 255));
  int randomG = int(random(0, 255));
  int randomB = int(random(0, 255));
  stroke(randomR, randomG, randomB);
}


void setup() {
  size(500, 500);
  background(255);

  drawLightning(50, 0, 150);

  changeStroke();
  drawLightning(300, 0, 50);

  changeStroke();
  drawLightning(205, 300, 100);

  changeStroke();
  drawLightning(160, 60, 20);

  changeStroke();
  drawLightning(320, 250, 70);

  changeStroke();
  drawLightning(380, 170, 120);
}
