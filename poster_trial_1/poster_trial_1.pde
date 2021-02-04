// like a PS layer
PGraphics pg;


void setup() {
  size(900, 900);
  pg = createGraphics(586, 810);
}

void draw() {
  background(0);
  
  pg.beginDraw();
  pg.background(#111111);
  pg.endDraw();
  
  imageMode(CENTER);
  image(pg, width/2, height/2);
}
