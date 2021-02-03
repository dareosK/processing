color fg=0;
color bg=#f1f1f1;

void setup() {
  size(1920, 1080);
}

void draw() {
  background(bg);
  noStroke();
  noFill();
  stroke(fg);
  strokeCap(RECT);
  strokeWeight(20);
  rectMode(CENTER);

  for (int i = 0; i < mouseX/100; i++) {
    //push();
    line(random(width), random(height), random(width), random(height));
    //pop();
  }
  //fill(fg);
  //push();
  //translate(mouseX, mouseY);
  //triangle(0, 0, 40, 40, 0, 60);
  //pop();
}
