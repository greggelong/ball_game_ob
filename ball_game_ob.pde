// version with objects
// Declare all global varibles 
//Ball myBall1;
//Ball myBall2;
Ball myBall1;
Ball myBall2;
 

// set up does not change
void setup() {
  size(500, 500);
  background(128);
 
  myBall1 = new Ball(color(255,0,0),200,200,2,3);
  myBall2 = new Ball(color(0,255,0),300,300,4,5);
}


void draw() {
  background(128); // clear the background
  fill(0);
  rect(mouseX, 450, 50, 20); // move paddle
  myBall1.move();
  myBall2.move();
  myBall1.bounce();
  myBall2.bounce();
  myBall1.display();
  myBall2.display();
}

 
