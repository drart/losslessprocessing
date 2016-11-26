int w = 320, h = 240;

PImage data;
PImage out = new PImage(w,h);

int[][] contents = new int[256][];//256 levels for RGB/hue/brightness/etc

int[] counts = new int[256];//256 levels for RGB/hue/brightness/etc
int[] indexlist = new int[76800];//int[] indexlist = new int[data.pixels.length];

void setup() {

  size(640,480);
  data = loadImage("test.png");
  image(data, 0, 0);
  int tmr = millis();
  
  println (640 * 480);
    println (320 * 240);
  println (data.pixels.length);
  
  
  for (int i=0; i<data.pixels.length; i++) {
    indexlist[i] = int(hue(data.pixels[i]));//target
    counts[indexlist[i]]++;//increment the count table
  }

  for (int i=0; i<256; i++) {
    contents[i] = new int[counts[i]];
  }

  for (int i=0; i<data.pixels.length; i++) {
    contents[ indexlist[i] ][ contents[indexlist[i]].length - counts[indexlist[i]] ] = data.pixels[i];
    counts[indexlist[i]]--;//back down the count table
  }

  int idx = 0;//Location to place into output

  for (int i=0; i<contents.length; i++) {//outer array size
    for (int d=0; d<contents[i].length; d++) {
	out.pixels[idx] = contents[i][d];
	idx++;
    }

  }

  println("milliseconds: " + (millis() - tmr));

  noLoop();
}


void draw() {
  image(data,0,0);
  image(out,w,0);
}
