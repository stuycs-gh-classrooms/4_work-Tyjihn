//Global constants
int BALL_SIZE = 10;
int PADDLE_HEIGHT = 100;
int PADDLE_WIDTH = 20;

//Driver variables
Ball b;
Paddle player0;
int score;


/* ===================
 void setup()
 After the score is set, initialize b and player0.
 b should be a ball located at the center of the screen.
 player0 should be paddle centered vertically on the screen,
 5 pixels in from the left edge of the screen.
 =================== */
void setup() {
  size(600, 400);
  background(0);
  score = 0;

}//setup


/* ===================
 void draw()
 Display both b and player0.
 Let the ball move normally.
 Use the move method in the Paddle class so that
 the center of player0 is located at the y
 coordinate of the mouse. The x coordinate of player0
 should not change.
 If b hits the right edge of player0, then
 call xbounce on b, add 1 to score and print the score.
 =================== */
void draw() {
  background(0);

  b.display();
  //player0.display();
  //player0.move();
}//draw

void keyPressed() {
  if (key == ' ') {
    b.reset();
    score= 0;
  }//reset
}
