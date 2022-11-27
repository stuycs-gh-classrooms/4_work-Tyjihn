class Ball {

  int cx, cy;
  int xvelocity, yvelocity;
  int radius;
  color c; //fill color of ball

  //constructor
  Ball() {
    c = SAFE_COLOR; //default color of ball
    radius = 20;
    reset();
  }//default constructor

  void reset() {
    xvelocity = 0;
    yvelocity = 0;
    cx = int(random(radius, width-radius));
    cy = int(random(radius, height-radius));
  }//resetBall

  void display() {
    fill(c); //color ball
    circle(cx, cy, radius * 2);
  }//display
  
  void setColor(color newc) {
    c = newc;
  }//setColor
  
  boolean collisionCheck(Ball other) {
    if (this == other) {
     return false; 
    }
    if (dist(this.cx, this.cy, other.cx, other.cy) < radius*2) {
      return true;
    }
    else {
      return false;
    }
  }//collisionCheck

  void move() {
    if (cx <= radius || cx >= (width - 1 - radius)) {
      xvelocity*= -1;
    }//x bounce
    if (cy <= radius || cy >= (height - 1 - radius)) {
      yvelocity*= -1;
    }//x bounce
    cx+= xvelocity;
    cy+= yvelocity;
  }//moveBall

  void changeSpeed(int x, int y) {
    xvelocity+= x;
    yvelocity+= y;
  }//changeSpeed

  boolean onBall(int x, int y) {
    float d = dist(x, y, cx, cy);
    return d <= radius;
  }//onBall

  int getScoreValue() {
    int score = abs(xvelocity) + abs(yvelocity);
    return score;
  }//getScoreValue
}//Ball
