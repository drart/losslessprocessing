// Processing 1.2.1
// Adam R. Tindale 2010
// http://www.adamtindale.com

import processing.video.*;
Capture cam;
PImage a;

void setup() {
  size(screen.width, screen.height);
  cam = new Capture(this, 640, 480);
  noCursor();
}


void draw() {
  background(200);
  if (cam.available() == true) {
    cam.read();
  }

  a = cam.get();
  
  a.loadPixels();
  Arrays.sort(a.pixels);
  a.updatePixels();

  image(a,0,0,width,height);
} 

