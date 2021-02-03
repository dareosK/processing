void setup() {
  size(600, 600);
}

void draw() {

  background(0);
  stroke(255);
  line(200, 200, 400, 200);
  line(400, 200, 400, 400);
  line(400, 400, 200, random(200, 400));
  line(200, 400, 200, 200);
}
  
