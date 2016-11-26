void sortthepixels (int x){
  
  for (int i = index; i < data.pixels.length; i++){
      //println(saturation(data.pixels[i]));
    if (int(red(data.pixels[i])) == x){
      
     tmp = data.pixels[i];
     data.pixels[i] = data.pixels[index];
     data.pixels[index] = tmp;
     
      index++;
    }
    
  }
  
  data.updatePixels();
  
  
}

int sortapixel(int x, int startindex){
  
  int currentindex = startindex;
  boolean swapped = false;
  
    for (int i = index; i < data.pixels.length; i++){
      if (int(red(data.pixels[i])) == x){
      
         tmp = data.pixels[i];
         data.pixels[i] = data.pixels[index];
         data.pixels[index] = tmp;
     
        index++;
        swapped = true;
        break;
    }
    
  }
  
  if ( !swapped)
  {
    
    x = x-1;
    
    
    
  }

  return x;
  
}
