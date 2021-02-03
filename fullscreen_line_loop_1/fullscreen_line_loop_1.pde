void setup() {
  fullScreen();
}

void draw() {

  background(0);
  for (int i = 0; i < displayHeight; i++) {
    float r = random(200);
    stroke(r*5);
    line(50, i, 50+r, i);
  }
}
