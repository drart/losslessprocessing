
String  theFile = "myimgedited.bmp";

PImage data;
PImage original_data;
float[] value;
color tempPixel;
float theMax; 
int index;
float temp;
//String theFile = findfiletouse();


Thread sortthread;
threadedsort sorter;

void setup() {


  data = loadImage(theFile);
  original_data = data;

  //value = new float[data.width*data.height];
  //size(data.width, data.height);
  
  dothething();
  
  noLoop();
 
}

void draw(){ 
}

void stop() {
  sorter.done=true;
  super.stop();
  //exit();
}

void dothething() {
  loadPixels();
  //mysort();
  //bubbleSort();
  quickSortColor(0, data.pixels.length-1);
  updatePixels();
  //image(data,0,0);
  data.save("processed/"+theFile+"-lossless-color.tiff");
  
  data=original_data; 
  quickSortSat(0, data.pixels.length-1);
  updatePixels();
  //image(data,0,0);
  data.save("processed/"+theFile+"-lossless-sat.tiff");


  data=original_data;
  quickSortBlue(0, data.pixels.length-1);
  updatePixels();
  //image(data,0,0);
  data.save("processed/"+theFile+"-lossless-blue.tiff");


  data=original_data;
  quickSortRed(0, data.pixels.length-1);
  updatePixels();
  //image(data,0,0);
  data.save("processed/"+theFile+"-lossless-red.tiff");


  data=original_data;
  quickSortGreen(0, data.pixels.length-1);
  updatePixels();
  //image(data,0,0);
  data.save("processed/"+theFile+"-lossless-green.tiff");

  data=original_data;
  quickSortHue(0, data.pixels.length-1);
  updatePixels();
  //image(data,0,0);
  data.save("processed/"+theFile+"-lossless-hue.tiff");


  data=original_data;
  quickSortBrightness(0, data.pixels.length-1);
  updatePixels();
  //image(data,0,0);
  data.save("processed/"+theFile+"-lossless-brightness.tiff");
  
  //exit();

}

