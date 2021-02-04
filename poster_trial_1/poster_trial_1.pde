// like a PS layer
PGraphics pg;
PImage img;
PFont avenir;

void setup() {
  size(900, 900);
  // create the graph layer
  pg = createGraphics(586, 810);
  // load the image
  img = loadImage("0Copy.jpg");
  // the image is probably too big
  img.resize(586, 810);
  // defines 1000 as the maximum font size
  avenir = createFont("AvenirNextCond.ttc", 1000);
}

void draw() {
  background(0);
  
  pg.beginDraw();
    pg.background(#111111);
    pg.imageMode(CENTER);
    
    // Sets Typography
    pg.textFont(avenir);
    pg.textAlign(CENTER, CENTER);
    pg.textSize(200);
   
   // Displays Image
    push();
      pg.translate(pg.width/2, pg.height/2);
      pg.image(img,0,0);
    pop();
    
    // Displays Text
    push();
      pg.translate(pg.width/2, pg.height/2);
      
    pop();
    
  pg.endDraw();
  
  imageMode(CENTER);
  image(pg, width/2, height/2);
}
