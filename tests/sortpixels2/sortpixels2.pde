// make an array of indexes sorting the image by some value
// rebuild the image based on the indexes of teh pixels


int w = 320, h = 240;

PImage data;
PImage out = new PImage(w,h);

int[] value = new int[w*h];
int[] sorted = new int[w*h];
//color[] mypixels = new color[w*h];


int theMax; 
int index;
int temp;

void setup() {
  // size of sketch is 2x the size of the image 
  // final result shows original next to sorted
  size(w*2,h);
  data = loadImage("test.jpg");
  //image(data, 0, 0);
  int tmr = millis();
  
   // println (640 * 480);
  //println (320 * 240);
  //println (data.pixels.length);
  
  
  for (int i=0; i < data.pixels.length; i++) {
    value[i] = int(saturation(data.pixels[i]));//target
    //println(value[i]);
  }


  for (int i=0; i< data.pixels.length; i++) {
    theMax = 0;
    index = i;
    for ( int j=i ; j < data.pixels.length; j++){
        if (value[j] > theMax){
          theMax = value[j];
          index = j; 
         // println(j);
        }
    }
    
    sorted [i] = index;
    //temp  = mypixels[i];
    //mypixels[i] = theMax;
    //mypixels[index] = temp;
  }


  // sorted is an array of indexes that are sorted based on the above
  for (int i = 0 ; i < data.pixels.length ; i++){
    out.pixels[i] = data.pixels[ sorted[i] ];
   //println(sorted[i]);
  }
  
  println("milliseconds: " + (millis() - tmr));

  noLoop();
}


void draw() {
  image(data,0,0);
  image(out,w,0);
}
