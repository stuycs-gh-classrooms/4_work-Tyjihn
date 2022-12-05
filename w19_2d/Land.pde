class Land {

  int state, nextState;
  int landSize;
  int x, y;
  color landColor;

  Land(int x, int y, int landSize, int state) {
    this.x = x;
    this.y = y;
    this.landSize = landSize;
    this.state = state;
  }

  void display() {
    if (state == 0) {
      landColor = DIRT_COLOR;
    }
    else if (state == 1) {
      landColor = FIRE_COLOR;
    }
    else if (state == 2) {
      landColor = BURNT_COLOR;
    }
    else if (state == 3) {
      landColor = GRASS_COLOR;
    }

    fill(landColor);
    square(x, y, landSize);
  }

  void updateNextState(int previousLand) {
    if (state == 1) {
      nextState = 2;
    }
    else if (state == 3 && previousLand == 1) {
      nextState = 1;
    }
    else if (state == 0 || state == 2 || state == 3) {
     nextState = state; 
    }
  }

  void changeState() {
    state = nextState;
  }
}
