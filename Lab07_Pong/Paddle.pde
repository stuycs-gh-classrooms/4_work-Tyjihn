class Paddle {

  /* ===================
   Instance variables
   A Paddle should know the coordinates of
   its upper-left corner, as well as its
   width and height.
   Create instance variables to sore this information.
   =================== */
  int paddleX, paddleY, paddleHeight, paddleWidth;


  /* ===================
   Default Constructor
   Set the corner of the paddle to (0, 0) and
   the size of the paddle to the PADDLE_WIDTH
   and PADDLE_HEIGHT gloabl constants defined
   in PongDriver.
   =================== */
  Paddle() {
    paddleX = 0;
    paddleY = 0;
    paddleWidth = PADDLE_WIDTH;
    paddleHeight = PADDLE_HEIGHT;
  }//default constructor

  /* ===================
   Position constructor
   Write a constructor that takes a single parameter that
   represents the value the x coordinate of the corner shold
   be.
   It should set the size of the paddle the same way the
   default constructor does.
   The corner should be set such that:
   0) The paddle should be centered vertically on the screen.
   1) The x value should be the value of the parameter passed in.
   =================== */
  Paddle(int xoffset) {
    paddleX += xoffset;
  }//x offset constructor

  ///* ===================
  //void display()
  //Draw a rectangle using the instance vairables.
  //=================== */
  void display() {
    rect(paddleX, paddleY, paddleWidth, paddleHeight);
  }//display

  /* ===================
   void move(int x)
   Set the y value of the corner of the paddle
   to the provided parameter.
   =================== */
  void move(int y) {
    paddleY = y;
  }//move

  /* ===================
   boolean hitRight(Ball b)
   Should return true if the Ball parameter is hitting
   the right side of the paddle.
   =================== */
  boolean hitRight(Ball b) {
    if (b.cx <= paddleX && b.cy <= paddleY + paddleHeight && b.cy >= paddleY) {
   return true;
  }//if
   else { 
     return false;
   }//else
}//hitLeft
}//Paddle
