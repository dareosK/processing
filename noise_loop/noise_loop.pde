void setup() {
  fullScreen();
  frameRate(10);
}

void draw() {
  background(0);
  fill(255);
  noStroke();
  
  for (int i = 0; i<10000; i++) {
    fill(random(255));
    ellipse(random(width), random(height), 10, 10);
  }
}
