// like a PS layer
PGraphics pg;
PImage img;

void setup() {
  size(900, 900);
  // create the graph layer
  pg = createGraphics(586, 810);
  // load the image
  img = loadImage("0Copy.jpg");
  // the image is probably too big
  img.resize(586, 810);
}

void draw() {
  background(0);
  
  pg.beginDraw();
  pg.background(#111111);
  pg.imageMode(CENTER);
  pg.image(img,0,0);
  pg.endDraw();
  
  imageMode(CENTER);
  image(pg, width/2, height/2);
}
