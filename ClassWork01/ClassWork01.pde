/* ===================
 Global variables:
 numCols, numRows: number of tiles hroizontally and vertically
 xSize, xWidth: size of each individual tile.
 count: needed to cycle through functions in draw()
 =================== */
int rows;
int cols;
int xSize;
int ySize;
int count;


/* ===================
 You should not modify this function except
 if you want to change the frameRate for testing.
 =================== */
void setup() {
  size(600, 450);
  frameRate(1);
  rows = 18;
  cols = 30;
  xSize = 20;
  ySize = 25;
  count = 24;
}

/* ===================
 DO NOT MODIFY DRAW.
 
 This will test each of the functions below.
 
 You may change the fill color if you like.
 =================== */
void draw() {

  if (count < 5 ) {
    tile(rows, cols, xSize, ySize);
  } else if (count < 10) {
    alternateRows(rows, cols, xSize, ySize);
  } else if (count < 15) {
    triColor(rows, cols, xSize, ySize);
  } else if (count < 20) {
    rainbow(rows, cols, xSize, ySize);
  } else if (count < 25) {
    checkerboard(rows, cols, xSize, ySize);
  }
  count = (count + 1) % 25;
}

/* ===================
 Create a grid of rectangles using the  provided parameters.
 =================== */
void tile (int numRows, int numCols, int rectWidth, int rectHeight) {
  int x = 0;
  int y = 0;
  numCols = 0;
  numRows = 0;

  while (numRows <= rows) {
    if (numCols > cols) {
      y += rectHeight;
      numRows++;
      numCols = 0;
      x = 0;
    } else {
      rect(x, y, rectWidth, rectHeight);
      x += rectWidth;
      numCols++;
    }
  }
}//tile

/* ===================
 Create a grid of rectangles using the  provided parameters.
 Select 2 fill colors.
 The fill color should alternate every other ROW.
 =================== */
void alternateRows(int numRows, int numCols, int rectWidth, int rectHeight) {
  int x = 0;
  int y = 0;
  numCols = 0;
  numRows = 0;

  while (numCols <= cols) {
    if (numCols % 2 == 0 ) {
      fill(255);
    } else {
      fill(0);
    }
    if (numRows > rows) {
      x += rectWidth;
      numCols++;
      numRows = 0;
      y = 0;
    } else {
      rect(x, y, rectWidth, rectHeight);
      y += rectHeight;
      numRows++;
    }
  }
}//alternateRows

/* ===================
 Create a grid of rectangles using the  provided parameters.
 Select 2 fill colors.
 The fill color should create a checkerboard pattern with your selected colors.
 =================== */
void checkerboard(int numRows, int numCols, int rectWidth, int rectHeight) {
  int x = 0;
  int y = 0;
  numCols = 0;
  numRows = 0;

  while (numCols <= cols) {
    if (numCols % 2 == 0 ) {
      if (numRows % 2 == 0) {
        fill(255);
      } else {
        fill(0);
      }
    } else {
      if (numRows % 2 == 0) {
        fill(0);
      } else {
        fill(255);
      }
    }
    if (numRows > rows) {
      x += rectWidth;
      numCols++;
      numRows = 0;
      y = 0;
    } else {
      rect(x, y, rectWidth, rectHeight);
      y += rectHeight;
      numRows++;
    }
  }
}//checkerboard

/* ===================
 Create a grid of rectangles using the  provided parameters.
 The tiles from the left sdie up to one-fourth of the grid should be red.
 The tiles between one fourth of the grid and half of the grid should be green.
 The remaining tiles should be blue.
 
 You should not use the logical && or || operators. Keep your conditional statements
 to a single condition.
 =================== */
void triColor(int numRows, int numCols, int rectWidth, int rectHeight) {
  int x = 0;
  int y = 0;
  numCols = 0;
  numRows = 0;

  while (numCols <= cols) {
    if (numCols == 0) {
      fill(255, 0, 0);
    }
    if (numCols > cols/4) {
      fill(0, 255, 0);
    }
    if (numCols > cols/2) {
      fill(0, 0, 255);
    }
    if (numRows > rows) {
      x += rectWidth;
      numCols++;
      numRows = 0;
      y = 0;
    } else {
      rect(x, y, rectWidth, rectHeight);
      y += rectHeight;
      numRows++;
    }
  }
}//triColor


/* ===================
 Create a grid of rectangles using the  provided parameters.
 Vertically, the tiles should create a rainbow of 
 red, orange, yellow, green, blue, purple.
 Each color should made made of the same amount of tiles.
 
 You should not use the logical && or || operators. Keep your conditional statements
 to a single condition.
 =================== */
void rainbow(int numRows, int numCols, int rectWidth, int rectHeight) {
}//rainbow
