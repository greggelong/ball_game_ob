class Ball {
  color c;
  float xpos;
  float ypos;
  float speedX;
  float speedY;

  Ball(color c_, float xpos_, float ypos_, float speedX_, float speedY_) {
    c = c_;
    xpos = xpos_;
    ypos = ypos_;
    speedX = speedX_;
    speedY = speedY_;
  }

  void display() {

    //println("hello", c, xpos, ypos);
    stroke(255);
    fill(c);
    ellipse(xpos, ypos, 25, 25);
  }

  void move() {
    xpos = xpos + speedX;
    ypos = ypos + speedY;
  }

  void bounce() { 
    if (xpos < 0 || xpos> width) {
      speedX = speedX *-1; //reverse it
    }
    if (ypos < 0|| ypos>height) {
      speedY=speedY *-1;
    }
    if (xpos >= mouseX-10 && xpos<=mouseX+50 && ypos >= 440 && ypos<=450) {  // needed to make paddle check wider
      //println("bang!");
      speedY=speedY*-1;
    }
  }
}
