void drawPg2() {
  
  pg2.beginDraw();
    pg2.background(#111111);
    pg2.imageMode(CENTER);
    
    // Displays Image
    pg2.push();
      pg2.translate(pg.width/2, pg.height/2);
      float imgWave = map(sin(radians(frameCount*3)), -1, 1, 2, 0.6);
      pg2.scale(imgWave);
      pg2.image(img2,0,0);
    pg2.pop();
    
    // Sets Typography
    pg2.textFont(avenir);
    pg2.textAlign(CENTER, CENTER);
    pg2.textSize(400);
    pg2.fill(#111111);
    
    // Displays Type + wave
    String txt = "<3";
    float textWidth = pg.textWidth(txt);
    
    float txtWave = map(sin(radians(frameCount/2)), -1, 1, -textWidth/2, textWidth/2);
    
    pg2.push();
      pg2.translate(0, pg.height/7-40);
      //we already translating the position of the text (line 39), 
      //so we will position it at 0 0
      pg2.text(txt, 300, 0);
    pg2.pop();
    
  pg2.endDraw();
}
