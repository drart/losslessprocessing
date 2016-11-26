

// art of the quicksort algorithm
int partitionColor( int left, int right)
{
      int i = left, j = right;
      color tmp;
      float pivot = color(data.pixels[(left + right) / 2]);
     
      while (i <= j) {
            while (color(data.pixels[i]) < pivot)
                  i++;
            while (color(data.pixels[j]) > pivot)
                  j--;
            if (i <= j) {
                  tmp = data.pixels[i];
                  data.pixels[i] = data.pixels[j];
                  data.pixels[j] = tmp;
                  i++;
                  j--;
            }
      };
     
      return i;
}
 
void quickSortColor( int left, int right) {
      int index = partitionColor( left, right);
      if (left < index - 1)
            quickSortColor( left, index - 1);
      if (index < right)
            quickSortColor( index, right);
}
  
  
// art of the quicksort algorithm
int partitionSat( int left, int right)
{
      int i = left, j = right;
      color tmp;
      float pivot = saturation(data.pixels[(left + right) / 2]);
     
      while (i <= j) {
            while (saturation(data.pixels[i]) < pivot)
                  i++;
            while (saturation(data.pixels[j]) > pivot)
                  j--;
            if (i <= j) {
                  tmp = data.pixels[i];
                  data.pixels[i] = data.pixels[j];
                  data.pixels[j] = tmp;
                  i++;
                  j--;
            }
      };
     
      return i;
}
 
  
void quickSortSat( int left, int right) {
      int index = partitionSat( left, right);
      if (left < index - 1)
            quickSortSat( left, index - 1);
      if (index < right)
            quickSortSat( index, right);
}

// art of the quicksort algorithm
int partitionBlue (int left, int right)
{
      int i = left, j = right;
      color tmp;
      float pivot = blue(data.pixels[(left + right) / 2]);
     
      while (i <= j) {
            while (blue(data.pixels[i]) < pivot)
                  i++;
            while (blue(data.pixels[j]) > pivot)
                  j--;
            if (i <= j) {
                  tmp = data.pixels[i];
                  data.pixels[i] = data.pixels[j];
                  data.pixels[j] = tmp;
                  i++;
                  j--;
            }
      };
     
      return i;
}
 

void quickSortBlue( int left, int right) {
      int index = partitionBlue( left, right);
      if (left < index - 1)
            quickSortBlue( left, index - 1);
      if (index < right)
            quickSortBlue( index, right);
}

// art of the quicksort algorithm
int partitionRed( int left, int right)
{
      int i = left, j = right;
      color tmp;
      float pivot = red(data.pixels[(left + right) / 2]);
     
      while (i <= j) {
            while (red(data.pixels[i]) < pivot)
                  i++;
            while (red(data.pixels[j]) > pivot)
                  j--;
            if (i <= j) {
                  tmp = data.pixels[i];
                  data.pixels[i] = data.pixels[j];
                  data.pixels[j] = tmp;
                  i++;
                  j--;
            }
      };
     
      return i;
}
 

void quickSortRed( int left, int right) {
      int index = partitionRed( left, right);
      if (left < index - 1)
            quickSortRed( left, index - 1);
      if (index < right)
            quickSortRed( index, right);
}

// art of the quicksort algorithm
int partitionGreen( int left, int right)
{
      int i = left, j = right;
      color tmp;
      float pivot = green(data.pixels[(left + right) / 2]);
     
      while (i <= j) {
            while (green(data.pixels[i]) < pivot)
                  i++;
            while (green(data.pixels[j]) > pivot)
                  j--;
            if (i <= j) {
                  tmp = data.pixels[i];
                  data.pixels[i] = data.pixels[j];
                  data.pixels[j] = tmp;
                  i++;
                  j--;
            }
      };
     
      return i;
}
 
void quickSortGreen( int left, int right) {
      int index = partitionGreen( left, right);
      if (left < index - 1)
            quickSortGreen( left, index - 1);
      if (index < right)
            quickSortGreen( index, right);
}

// art of the quicksort algorithm
int partitionHue( int left, int right)
{
      int i = left, j = right;
      color tmp;
      float pivot = hue(data.pixels[(left + right) / 2]);
     
      while (i <= j) {
            while (hue(data.pixels[i]) < pivot)
                  i++;
            while (hue(data.pixels[j]) > pivot)
                  j--;
            if (i <= j) {
                  tmp = data.pixels[i];
                  data.pixels[i] = data.pixels[j];
                  data.pixels[j] = tmp;
                  i++;
                  j--;
            }
      };
     
      return i;
}
 


void quickSortHue( int left, int right) {
      int index = partitionHue( left, right);
      if (left < index - 1)
            quickSortHue( left, index - 1);
      if (index < right)
            quickSortHue( index, right);
}


// art of the quicksort algorithm
int partitionBrightness( int left, int right)
{
      int i = left, j = right;
      color tmp;
      float pivot = brightness(data.pixels[(left + right) / 2]);
     
      while (i <= j) {
            while (brightness(data.pixels[i]) < pivot)
                  i++;
            while (brightness(data.pixels[j]) > pivot)
                  j--;
            if (i <= j) {
                  tmp = data.pixels[i];
                  data.pixels[i] = data.pixels[j];
                  data.pixels[j] = tmp;
                  i++;
                  j--;
            }
      };
     
      return i;
}

void quickSortBrightness( int left, int right) {
      int index = partitionBrightness( left, right);
      if (left < index - 1)
            quickSortBrightness( left, index - 1);
      if (index < right)
            quickSortBrightness( index, right);
}

