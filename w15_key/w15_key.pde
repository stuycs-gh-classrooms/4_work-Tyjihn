int[] xvals; //Array of integers representing the x-coordiantes of a series of points.
int[] yvals; //Array of integers representing the y-coordiantes of a series of points.
int numPoints; //Number points currently stored in xvals and yvals.

void setup() {
  size(600, 400);
  background(0);
  xvals = new int[100];
  yvals = new int[100];
  numPoints = 0;

  stroke(255);
  strokeWeight(4);
}

void draw() {
  background(0);
  drawLines(xvals, yvals);
}

void mousePressed() {
  if (numPoints < xvals.length - 1) {
    xvals[numPoints] = mouseX;
    yvals[numPoints] = mouseY;
  }
  numPoints++;
  //println(xvals);
}

void keyPressed() {
  if (key == 'c') {
    numPoints = 0;
  }//clear screen
  if (keyCode == ' ') {
    stroke(int(random(255)), int(random(255)), int(random(255)));
  }//color change

  if (keyCode == UP) {
    moveLines(xvals, yvals, 0, -1);
  }//move drawing up
  else if (keyCode == DOWN) {
    moveLines(xvals, yvals, 0, 1);
  }// move drawing down
  else if (keyCode == LEFT) {
    moveLines(xvals, yvals, -1, 0);
  }//move drawing left
  else if (keyCode == RIGHT) {
    moveLines(xvals, yvals, 1, 0);
  }//move drawing right
}

//void mouseDragged() {
//  moveLines(xvals, yvals, mouseX - xvals[numPoints], mouseY - yvals[numPoints]);
//  println(mouseX);
//}

void drawLines(int[] xs, int[] ys) {
  for (int i=1; i < numPoints; i++) {
    line(xs[i-1], ys[i-1], xs[i], ys[i]);
  }
}

void moveLines(int[] xs, int[] ys, int xMod, int yMod) {
  for (int i=0; i < numPoints; i++) {
    xs[i] += xMod;
  }
  for (int i=0; i < numPoints; i++) {
    ys[i] += yMod;
  }
}
