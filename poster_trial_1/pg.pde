void drawPg() {
  
  pg.beginDraw();
    pg.background(#111111);
    pg.imageMode(CENTER);
    
    // Displays Image
    pg.push();
      pg.translate(pg.width/2, pg.height/2);
      float imgWave = map(sin(radians(frameCount)), -1, 1, 1, 2);
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
    
    float txtWave = map(tan(radians(frameCount/2)), -1, 1, textWidth/2, textWidth/10);
    
    pg.push();
      pg.translate(0 + txtWave, pg.height/2-40);
      //we already translating the position of the text (line 39), 
      //so we will position it at 0 0
      pg.text(txt, 300, 0);
    pg.pop();
    
  pg.endDraw();
}
