//// Items you may want to modify
String  theFile = "IMG_1084.JPG";
int movieFrameRate = 30;
int lenghtOfMovieInSeconds = 60;

////-------
/// The Guts
import processing.video.*;
MovieMaker mymovie;
PImage data;
color tmp;
int index = 0;
int numberOfFrames = 1;
int pixelsPerFrame;

int valuetofind = 255;

void setup() { 

  //size(1280,720);
  //size(640,480);
  size(854,480);
  
  
  data = loadImage(theFile);
  data.resize(width, height);
  
  pixelsPerFrame = int(data.pixels.length / (movieFrameRate * lenghtOfMovieInSeconds)) + 1;
  
  println(pixelsPerFrame);
  println(data.pixels.length);
  
  if (pixelsPerFrame <  1){
    println("Hey dummy, you need to do shorten your request");
    exit();
  }


  frameRate(movieFrameRate);

  mymovie = new MovieMaker(this, width, height, theFile +"lossless.mov",movieFrameRate, MovieMaker.MOTION_JPEG_B, MovieMaker.LOSSLESS);

}


void draw(){ 
  
   image(data, 0,0, width, height);
   mymovie.addFrame(); 
   
   /*
   // first algorithm that does 51 seconds
   if (valuetofind >= 0){
      sortthepixels(valuetofind--);
       mymovie.addFrame(); 
       
      // println(valuetofind);
   }
    
    if ( valuetofind == 0 ){
      mymovie.finish(); 
      println("done");
    }
    */
  
  for (int p = 0; p < pixelsPerFrame; p++){
    // switch a pixel
    valuetofind = sortapixel(valuetofind, index);
    // update the pixel array of the picture
    data.updatePixels();
  }
  
  if (index == data.pixels.length){
      mymovie.finish(); 
      println("done");
      noLoop();
  }
  print(numberOfFrames++);
  println("  " + index);
}

