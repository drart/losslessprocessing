color[] mycolors;

void setup(){
  size ( 400,400);
   loadColors("smallset.csv");
    rectMode(CENTER);
    noLoop();
}

void draw(){
  for (int i = 1 ; i <= mycolors.length; i++ ){
     fill ( mycolors[i-1] ); 
     rect(width/i, height/i, width/i, height/i );
  }
}


void loadColors(String filename){
  // laod the csv file
  String[] lines = loadStrings(filename);
  // one color per line so use that to set the length of destination color array
  mycolors = new color[lines.length];
  
  for ( int i = 0 ; i < lines.length; i++){
    String[] rgbvals = split(lines[i], ',');
    // assume it all worked out and there are only 3 values per row
    // no alpha or b/w pixels for now
    mycolors[i] = color ( int(rgbvals[0]) , int(rgbvals[1]) , int(rgbvals[2]) );
  }
}
