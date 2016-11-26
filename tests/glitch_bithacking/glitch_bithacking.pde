import java.awt.image.BufferedImage;
import java.awt.Toolkit;

/*
byte[] data=loadBytes("cossfest2.jpeg");
 BufferedImage bi;
 //Image awtImage = bi.createImage(data);
 //PImage img = loadImageMT(awtImage);
 
 //Image myimage = bi.createImage(data);
 //PImage mypimage = loadImageMT(myimage);
 
 for(int i=0;i<100;i++) // 100 changes
 {
 int loc=(int)random(128,data.length);//guess at header being 128 bytes at most..
 data[loc]=(byte)random(255);
 }
 //
 
 Image img;
 PImage mypimage;
 
 
 img =  loadFromJPG(data);
 mypimage= 
 image(mypimage,0,0);
 
 */
//------------------------------
// original
void setup(){
  byte[] data=loadBytes("6.JPG");
  /*
  for(int i=0;i<100;i++) // 100 changes
  {
    int loc=(int)random(128,data.length);//guess at header being 128 bytes at most..
    data[loc]=(byte)random(255);
  }
  */
  int[] myarry = new int[data.length-128];
  for (int i = 128; i < data.length; i++){
     myarry[i-128] = data[i]; 
  }
  
  quickSort(data,1000, data.length-1);
  //quickSort(myarry, 128, myarry.length-1);
  


  saveBytes("6.jpg",data);
  println(data.length);
  noLoop();
}

