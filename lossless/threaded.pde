
class threadedsort implements Runnable{
 int currentFrame;
 int totalFrames; 
 public boolean done; 
  
  
  float percentFinished(){
    
   return (float)currentFrame / float(totalFrames);
    
  }
  
  public void run(){
     done = false;
    
    while(!done)
    {
      // process my images
    
    
  
    }
    
    try 
    {
        sortthread.sleep(500);
    } 
    catch(InterruptedException e) 
    {  
        e.printStackTrace();
        exit();
    }
  
  }

}
