final String sketchname = getClass().getName();

import com.hamoid*;
VideoExport videoExport;

void rec {
  if (frameCount == 1) {
    videoExport = new videoExport(this, "../" + sketchName + ".mp4");
    videoExport.setFrameRate(30);
    videoExport.startMovie();
  }
  
  videoExport.saveFrame();
}
