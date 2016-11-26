// Looks for valid directory
// Looks for images to load every load phase in case the directory changes
//
//


PImage showme;
int counter = 0; 
String path = "/Users/adamtindale/Documents/Processing/lossless/processed/";
String currentfile = "";


//to implement
float secondstoshoweachimage;
int framesforeachimage;

void setup(){
  size(screen.width, screen.height);
  
  frameRate(30); 
  
  framesforeachimage = int(secondstoshoweachimage * frameRate);
  
 if(!findmydirectory(path))
    exit();
    
    noCursor();
    
}

void draw(){
  if (counter == 0){
    currentfile = findfiletouse(path, currentfile);
    showme = loadImage(path+currentfile);
    
    //println(currentfile);
    //println(path+findfiletouse(path, currentfile));
  }
  image(showme,0, 0,width,height);
  
  counter = ++counter % 150;

}


boolean findmydirectory(String p){
     File dataPath;
    dataPath = new File(p);
    
    if (!dataPath.exists())
      return false; 
    
    return dataPath.isDirectory();
}


String newestfileindir(String path, String current){

   
   long newest = 0;
   int indexofnewest = 0;
   
   File pathtoimages = new File(path);
   File[] files = pathtoimages.listFiles();
   long[] dates = new long[files.length];
   
   for (int i = 0 ; i < files.length ; i++)
        {
            dates[i] = files[i].lastModified();
            if ( dates[i] > dates[indexofnewest])
            {
              indexofnewest = i;
            }
        }

   return(files[indexofnewest].getName());

}




//looks through a directory and tries to find the current file
// when it finds the same name it goes to the next file in the folder
String findfiletouse(String path, String current){

    int indexofcurrent = 0;
     
   File pathtoimages = new File(path);
   File[] files = pathtoimages.listFiles();

 println(current+ "    current file");

   for (int i = 0 ; i < files.length ; i++)
   {

          if( files[i].getName().equals( current))
          {
              indexofcurrent = i;
              println("found my mate");
          }
   }
   indexofcurrent = (indexofcurrent + 1 )% files.length;       

   // fest for the two bogus cases on OSX
   if (files[indexofcurrent].getName() == ".DS_Store" | current == "")
     indexofcurrent++;

   return(files[indexofcurrent].getName());  
}
