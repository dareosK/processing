// like a PS layer
PGraphics pg;
PGraphics pg2;

// Works like a cache, where we blend the two images
PGraphics buffer;

PImage img;
PFont avenir;

void setup() {
  size(900, 900);
  // create the graph layer2
  pg = createGraphics(586, 810);
  pg2 = createGraphics(586, 810);
  buffer = createGraphics(586, 810);
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
    
    // Displays Image
    pg.push();
      pg.translate(pg.width/2, pg.height/2);
      float imgWave = map(sin(radians(frameCount)), -1, 1, 1, 3);
      pg.scale(imgWave);
      pg.image(img,0,0);
    pg.pop();
    
    // Sets Typography
    pg.textFont(avenir);
    pg.textAlign(CENTER, CENTER);
    pg.textSize(800);
    pg.fill(#f1f1f1);
    
    // Displays Type + wave
    String txt = "BELOW THREE";
    float textWidth = pg.textWidth(txt);
    
    float txtWave = map(tan(radians(frameCount/2)), -1, 1, textWidth/2, textWidth/110);
    
    pg.push();
      pg.translate(0 + txtWave, pg.height/2-40);
      //we already translating the position of the text (line 39), 
      //so we will position it at 0 0
      pg.text(txt, 300, 0);
    pg.pop();
    
  pg.endDraw();
  
  imageMode(CENTER);
  image(pg, width/2, height/2);
}
