// like a PS layer
PGraphics pg;
PGraphics pg2;

// Works like a cache, where we blend the two images
PGraphics buffer;

PImage img;
PImage img2;
PFont sfns;

void setup() {
  size(900, 900);
  // create the graph layer2
  pg = createGraphics(586, 810);
  pg2 = createGraphics(586, 810);
  buffer = createGraphics(586, 810);
  // load the image
  img = loadImage("q.jpg");
  img2 = loadImage("03_01_Break_Off_F_04.jpg");
  // the image is probably too big
  img.resize(586, 810);
  // defines 1000 as the maximum font size
  sfns = createFont("SFNSDisplayCondensed-Black.otf", 1000);
}

void draw() {
  background(0);
  
  drawPg();
  drawPg2();
  
  buffer.beginDraw();
    buffer.background(#f1f1f1);
    buffer.noStroke();
    
    // Whenever you want to work with the pixels on a PGraphics 
    // instance, you need to first convert them to images. 
    // pg.get(); takes the pixels of a PGraphics and places them on an PImage object!
    PImage i1 = pg.get();
    PImage i2 = pg2.get();
    
    
    // creates a 2D grid
    for (int x=0; x < pg.width; x++){
      for (int y=0; y < pg.height; y++){
        color c1 =i1.get(x,y);
        color c2 =i2.get(x,y);
        float wave = map(sin(radians(frameCount + x*0.3 + y*0.3)), -1, 1, 0, 1);
        color c3 = lerpColor(c1, c2, wave);
        
        //// To make it grayscale, fill the buffer with the c3's brightness value
        //float bri = brightness(c3);
        
        buffer.fill(c3);
        buffer.rect(x,y,1,1);
      }
    }
    
  buffer.endDraw();
  
  imageMode(CENTER);
  image(buffer, width/2, height/2);
  
  //rec();
  
  //if (frameCount == 460) {
  //  exit();
  //}
}
