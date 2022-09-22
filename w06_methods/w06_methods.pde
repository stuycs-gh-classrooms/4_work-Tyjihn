void avatar(int xc, int yc) {
fill(255, 246, 237);
strokeWeight(1);
ellipse(xc, yc, 73.3, 66.7);
fill(216, 0, 51);
arc(xc-5.5, yc, 16.7, 23.3, 0, PI, CHORD); 
fill(255, 246, 237);
fill(0);
circle(xc-14.2, yc-3.8, 2.6);
circle(xc+5.5, yc-3.8, 3.3);
  //strokeWeight(8);
  //bezier(44.8, 27.4, 42.9, 33.7, 48.3, 38, 64.4, 42.1);
  //line(59.1, 40, 68, 44.1);
  //bezier(44.8, 27.4, 39.4, 31.6, 48.3, 38, 35.8, 40);
  //bezier(41.2, 35.7, 34, 40, 30.4, 42, 30.4, 40);
  //strokeWeight(8);
  //bezier(44.8, 31.5, 41.2, 27.3, 32.2, 35.7, 30.4, 42);
  //strokeWeight(8);
  //bezier(44.8, 31.5, 55.5, 25.2, 55.5, 31.5, 66.2, 36.8);
  //strokeWeight(8);
  //line(46.5, 31.5, 68, 41);
}

void setup() {
  size(400, 400);
  background(220); 
  avatar(50, 50);
  avatar(300, 150);
  avatar (90, 270);
}
