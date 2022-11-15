int[] xvals; //Array of integers representing the x-coordiantes of a series of points.
int[] yvals; //Array of integers representing the y-coordiantes of a series of points.
int numPoints; //Number points currently stored in xvals and yvals.

void setup() {
  size(600, 400);
  background(0);
  xvals = new int[100];
  yvals = new int[100];
  numPoints = 0;

  strokeWeight(4);
  //drawLines(xvals, yvals);
}

void draw() {
  background(0);
  stroke(255);
  drawLines(xvals, yvals);
}

void mousePressed() {
   if(numPoints < xvals.length - 1) {
    xvals[numPoints] = mouseX;
    yvals[numPoints] = mouseY;
  }
   numPoints++;
   //println(xvals);
}

void drawLines(int[] xs, int[] ys) {
  for (int i = 1; i < numPoints; i++) {
    line(xs[i-1], ys[i-1], xs[i], ys[i]);
  }
}
