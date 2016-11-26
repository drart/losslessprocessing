//temporary solution
String findfiletousebyindex(String path, String current){

       
   File pathtoimages = new File(path);
   File[] files = pathtoimages.listFiles();
  
    globalindexhack = (globalindexhack + 1) % files.length;
  
  
     if (files[globalindexhack].getName() == ".DS_Store" | current == "")
     globalindexhack++;
     
     // maybe? do I need a return type
     if (files[globalindexhack].isDirectory())
       findfiletousebyindex(path,current);
  
   return(files[globalindexhack].getName());  
}


int globalindexhack = 0;
