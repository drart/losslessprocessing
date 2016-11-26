
PImage data = loadImage("test.jpg");
PrintWriter output;
output = createWriter("positions.csv"); 


data.loadPixels();
for (int i = 0 ; i < data.pixels.length; i++)
	output.println(  red(data.pixels[i]) + "," + green(data.pixels[i]) + "," +
blue(data.pixels[i]) );
data.updatePixels();

output.flush(); // Writes the remaining data to the file
output.close(); // Finishes the file
exit(); // Stops the program

