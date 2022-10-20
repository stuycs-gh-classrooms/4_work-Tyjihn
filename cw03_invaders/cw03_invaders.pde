//Global variables for the "spaceship" that goes across the top of the screen.
int topX, topY, topRadius;

//Global variables for the grid of "invaders"
int gridX, gridY, radius, numCircleCols, numCircleRows;

//Global variable for how far and in which direction
//the invader grid moves.
int invaderSpeed;


void setup() {
  //Do not modify theses lines
  size(400, 500);
  frameRate(60);
  topRadius = 15;
  radius = 25;
  numCircleCols = 4;
  numCircleRows = 2;

  /* PART 0
   Set topX and topY so that the "spaceship"
   circle starts fully visible at the top right
   corner of the screen.
   */
  topX = topRadius;
  topY = topRadius;

  /* PART 1
   Set gridX and gridY so that the "invader" grid
   starts fully visible on the right side just below
   the spaceship circle.
   */
  gridX = 7*radius;
  gridY = 2*topRadius + radius;

  /* PART 2
   Set invaderSpeed so that the invader grid
   stars by moving to the right by the width
   of a full circle.
   */
  invaderSpeed = 2*radius;
}//setup


void draw() {
  background(255);
  /* PART 0
   FIRST: complete the drawSpaceShip method below.
   */
  drawSpaceShip(topX, topY, topRadius*2);
  /* PART 0
   The spaceship should move forward 1 pixel each
   frame.
   When the entire spacechip has moved past the
   right edge of the screen, move it back to the
   left side.
   */
  //CODE GOES HERE
  if (topX + topRadius <= width) {
    topX ++;
  } else {
    topX = topRadius;
  }

  /* PART 1
   FIRST: complete the circleGrid method below.
   */
  circleGrid(gridX, gridY, numCircleRows, numCircleCols, radius*2);

  /* Part 2 FIRST
   The invader grid should only move twice a second using
   the invaderSpeed global variable.
   */
  //CODE GOES HERE
  if (frameCount % 30 == 0) {
    gridX += invaderSpeed;
  }

  /* Part 2 SECOND
   When the invader grid would go past the right edge,
   it should move down by a full circle size and
   reverse direction.
   Make sure no part of the grid gets cut off by the
   screen.
   */
  //CODE GOES HERE
  if (gridX + radius > width) {
    gridY += 2*radius;
    invaderSpeed = -(invaderSpeed);
    gridX += invaderSpeed;
  }


  /* Part 2 THIRD
   When the invader grid would go past the left edge,
   it should move down by a full circle size and
   reverse direction.
   Make sure no part of the grid gets cut off by the
   screen.
   */
  //CODE GOES HERE
  if (gridX < 2*radius * numCircleCols - radius) {
    gridY += 2*radius;
    invaderSpeed = -(invaderSpeed);
    gridX += invaderSpeed;
  }


  /* Part 2 THIRD
   When the invader grid would go past the bottom edge,
   it should reset back to the top, moving left to right
   again.
   */
  //CODE GOES HERE
  if (gridY + radius * (2 * numCircleRows - 1) > height) {
    gridX = 7*radius;
    gridY = 2*topRadius + radius;
  }
}//draw

/* PART 0
 Draw a circle of diameter d with center (shipX, shipY).
 If the circle is cut off by the edge of the screen,
 draw a circle on the other side
 */
void drawSpaceShip(int shipX, int shipY, int d) {
  circle(shipX, shipY, d);
}//drawSpaceShip

/* PART 1
 Draw a grid of circles with a diameter of d.
 The grid should have numRows rows, and each row
 should have numCols circles.
 The center of the top-right circles should be at
 (startX, startY)
 */
void circleGrid(int startX, int startY, int numRows, int numCols, int d) {
  numCols = 0;

  for (numRows = 0; numRows < numCircleRows; numRows++) {
    if (numCols == numCircleCols) {
      startY += d;
      startX += numCols * d;
      numCols = 0;
    }
    for (numCols = 0; numCols < numCircleCols; numCols++) {
      circle(startX, startY, d);
      startX -= d;
    }
  }
}//circleGrid

/*
  DO NOT MODIFY
 Draw a row of n circles with diameter of d where the center
 of the first circle is at (startX, startY)
 */
void circleRow(int startX, int startY, int n, int d) {
  for (int count=0; count < n; count++) {
    circle(startX, startY, d);
    startX+= d;
  }//for
}//circleRow
