class BlockRow {
  Block[] row;

  int numBlocks;
  int minBlockSize;
  int maxBlockSize;
  int algorithm;
  boolean sorted;

  //variables for bubble sort keep track of
  //start of the sorted portion
  //two test positions to compare
  int sortedStart;
  int testPos0;
  int testPos1;

  BlockRow(int nb, int algo, boolean ordered) {
    numBlocks = nb;
    minBlockSize = MIN_BLOCK_SIZE;
    algorithm = algo;
    sorted = ordered;

    setSortVars();

    row = new Block[numBlocks];
    setupBlocks(ordered);
  }//setup

  void setSortVars() {
    sortedStart = 0;
    testPos0 = 0;
    testPos1 = testPos++;
  }//setSortVars

  void swap(int i0, int i1) {
    int length0;
    int length1;
    block[i0].sideLength = block[i1].sideLength;
    block[i1].sideLength = block[i0].sideLength;
  }//swap

  void sort() {
    if (algorithm == BUBBLE) {
      bubbleSortOnce();
    }//bubble sort
  }//sort

  void bubbleSortOnce() {
    //if unsorted, keep going
    //if the sorted start is not at the beginning, there
    //is more sorting to do.
    if (UNSORTED) {

      //if we arent at the end of unsorted portion,
      //keep moving along
      if ( NOT AT END ) {

        //if the 2 test values are out of order, swap!
        //when swapping values, don't forget to call rearrange()
        if (OUT OF ORDER) {

        }//bubbling

        //move our test values over

      }//Not at the end

      //if we reach the end of the unsorted position,
      //change our index variables appropriately.
      if (AT END OF UNSORTED AREA) {
      }//reset
    }//still sorting
  }//bubbleSortOnce


/*==================================
  LEAVE ALL OF THIS CODE ALONE.
  The code below this line is here to help
  run the program, it is all working, and
  does not need to be modified.
  ==================================*/


  void setupBlocks(boolean ordered) {
    maxBlockSize = 0;
    minBlockSize = MIN_BLOCK_SIZE;
    int topSize = 100;
    if (ordered) {
      topSize = 10;
    }
    for (int i=0; i < row.length; i++) {
      int bsize = int(random(minBlockSize, topSize));
      if (maxBlockSize < bsize) {
        maxBlockSize = bsize;
      }//keep maxBlockSize up to date
      row[i] = new Block(0, 0, bsize);
      if (ordered) {
        minBlockSize = bsize;
        topSize = minBlockSize+5;
      }//keep thigns ordered
    }//array loop
    rearrange();
    setSortVars();
  }//setupBlocks

  void rearrange() {
    int x = 5;
    int y = 25;
    int topSize = 0;
    for (int i=0; i < row.length; i++) {
      if (topSize < row[i].sideLength) {
        topSize = row[i].sideLength;
      }//update topSize
      if (x + row[i].sideLength >= width) {
        x = 5;
        y+= topSize + 5;
      }//new row
      row[i].move(x, y);
      x+= row[i].sideLength +2;
    }//array loop
  }//rearrange

  void display() {
    for (int i=0; i < row.length; i++) {
      if (algorithm == BUBBLE) {
        setBubbleColor(i);
      }//bubble sort color
      else if (algorithm == SELECTION) {
        setSelectionColor(i);
      }//selection sort coloring
      else if (algorithm == INSERTION) {
        setInsertionColor(i);
      }//insertion sort coloring
      row[i].display();
    }//array loop
  }//viewBlocks

void setBubbleColor(int i) {
  color c;
  if (i >= sortedStart) {
    c = SORTED;
  }//sorted color
  else if (i == testPos0) {
    c = CURRENT;
  }//test color
  else if (i == testPos1) {
    c = TEST;
  }//test color
  else {
    c = UNSORTED;
  }//unsorted color
  row[i].inside = c;
}//setBubbleColor

void setSelectionColor(int i) {
  int testPos = -1;
  int smallestPos = -1;
  int currentPos = -1;
  color c;
  if (i < currentPos) {
    c = SORTED;
  }//sorted color
  else if (i == currentPos) {
    c = CURRENT;
  }//test color
  else if (i == testPos) {
    c = TEST;
  }//test color
  else if (i == smallestPos) {
    c = SMALLEST;
  }//smallest color
  else {
    c = UNSORTED;
  }//unsorted color
  row[i].inside = c;
}//setBubbleColor

void setInsertionColor(int i) {
  color c;
  int newValue = -1;
  int sortedEnd = -1;
  if (i == newValue) {
    c = SMALLEST;
  }//test color
  else if (i <= sortedEnd) {
    c = SORTED;
  }//sorted color
  else {
    c = UNSORTED;
  }//unsorted color
  row[i].inside = c;
}//setBubbleColor

  void shuffle() {
    for (int i=0; i<row.length; i++) {
      int i0 = int(random(0, row.length));
      int i1 = int(random(0, row.length));
      swap(i0, i1);
    }//array loop
    rearrange();
    setSortVars();
    ordered = false;
  }//shuffle

  int getSize(int i) {
    if (i < row.length && i >= 0) {
      return row[i].sideLength;
    }//valid index
    return -1;
  }//getSize

  void setColor(int i, color c) {
    row[i].inside = c;
  }//setColor
}//BlockRow
