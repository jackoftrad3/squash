boolean going;
ball b;
paddle p;
void setup() {
  b = new ball();
  p = new paddle();
  size(320, 640);
}

void draw() {
  background(0);
  if (going) {
    p.display();
    //For one ball- display,check if touches edges , check if collides, score.
    b.display();
    //need on for movement called b.move- should also include accelerate
    //b.pop
    b.move();
    b.edge();
    //b.collision();
  } else {
    println("The game is paused");
    b.display();
    p.display();
  }
}

void mousePressed() {
  going =! going;
}
