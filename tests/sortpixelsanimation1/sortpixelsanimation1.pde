// make an array of indexes sorting the image by some value
// rebuild the image based on the indexes of teh pixels

int w = 320, h = 240;

PImage data;
float[] value = new float[w*h];
color tempPixel;
float theMax; 
int index;
float temp;

int pointer= 0;

void setup() {
  size(w,h);
  data = loadImage("test.jpg");
    loadPixels();
    
    for ( int i = 0 ; i < data.pixels.length;i++ ){
    value[i] = saturation(data.pixels[i]);
  }

}


void draw() {
  loadPixels();
  mysort();
  updatePixels();
  image(data,0,0);
  
}

  
void mysort(){
     for (int i = 0 ; i < 100 ; i++) {
    theMax = 0;
    index = pointer;
      
    // find the pixel remaining with the largest saturation value
    for ( int j=pointer ; j < data.pixels.length; j++){
        if ( value[j] > theMax){
          theMax = value[j];
          index = j; 
        }     
    }
    
    //swap pixels
    tempPixel = data.pixels[pointer];    
    data.pixels[pointer] = data.pixels[index];
    data.pixels[index]=tempPixel;

    temp = value[pointer];
    value[pointer] = theMax;
    value[index] = temp;
    
    updatePixels();
    pointer++;
  }
}

