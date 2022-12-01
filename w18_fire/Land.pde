class Land {
  
  int state;
  int nextState;
  int landSize;
  int x, y;
  color landColor;
  
  Land() {
    x = 0;
    y = 0;
  }
  
  void display() {
    square(x, y, landSize);
  }
  
  void updateNextState(Land other) {
   if(this.state == 1) {
     this.state = 2;
   }
   if(this.state == 3 && other.state == 1) {
     this.state = 1;
   }
  }
  
  void changeState() {
    state = nextState; 
  }
}
