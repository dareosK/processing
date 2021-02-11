// like a PS layer
PGraphics pg;
PGraphics pg2;

// Works like a cache, where we blend the two images
PGraphics buffer;

PImage img;
PImage img2;
PFont avenir;

void setup() {
  size(900, 900);
  // create the graph layer2
  pg = createGraphics(586, 810);
  pg2 = createGraphics(586, 810);
  buffer = createGraphics(586, 810);
  // load the image
  img = loadImage("0Copy.jpg");
  img2 = loadImage("03_01_Break_Off_F_04.jpg");
  // the image is probably too big
  img.resize(586, 810);
  // defines 1000 as the maximum font size
  avenir = createFont("AvenirNextCond.ttc", 1000);
}

void draw() {
  background(0);
  
  drawPg();
  drawPg2();
  
  buffer.beginDraw();
    buffer.background(#f1f1f1);
    
    // Whenever you want to work with the pixels on a PGraphics 
    // instance, you need to first convert them to images. 
    // pg.get(); takes the pixels of a PGraphics and places them on an PImage object!
    PImage i1 = pg.get();
    PImage i2 = pg2.get();
    
    
    // creates a 2D grid
    for (int x=0; x < pg.width; x++){
      for (int y=0; y < pg.height; y++){
      
      }
    }
    
  buffer.endDraw();
  
  imageMode(CENTER);
  image(pg2, width/2, height/2);
}
