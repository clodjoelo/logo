
class colors{
  color c, c1, c2, c3,c4,c5; 
  color [] cols = new color [4];
  Integer[] zones = new Integer [4];
  color rTColor = color(0,0,0);
  float currentBrightness;
  color currentColor;
  boolean setBrightness;
  
  
  public void setArray(){
    float brightness = 91;
    float saturation = 60;
   colorMode(HSB, 360, 100, 100);
   c = color(random(360),random(100),brightness);
   c1 = color(random(360),random(100),brightness);
   c2 = color(random(360),random(100),brightness);
   c3 = color(random(360),random(100),brightness);
   cols[0] = c;
   cols[1] = c1; 
   cols[2] = c2; 
   cols[3] = c3; 
  }
  
  
  public void setZones(){
    /*zones[0] = 156;
    zones[1] = 295; 
    zones[2] = 434;
    zones[3] = 575;*/
    zones[0] = 195;
    zones[1] = 375; 
    zones[2] = 555;
    //zones[3] = 575;
   // zones[4] = 714;   
  }
  
  public void setBrightnessFalse(){
    setBrightness = false;
  }
  
  public color getColorAliens(int pos){
    for(int i = 2; i>-1;i--){
      if(pos>zones[i]){
         rTColor = cols[i+1];
         break;
      }
      rTColor = cols[0];
    }
    return rTColor;
  }
  
  public color checkColor(int pos,float br){
    colorMode(HSB, 360, 100, 100);
    for(int i = 2; i>-1;i--){
      if(pos>zones[i]){
         rTColor = cols[i+1];
         break;
      }
      rTColor = cols[0];
    }
    float hue = hue(rTColor);
    float saturation = saturation(rTColor);
    rTColor = color(hue,saturation,br);
    return rTColor;
  }
    
  
  public void setBrightness(float b,color cc){
    colorMode(HSB, 360, 100, 100);
    float hue = hue(cc);
    float saturation = saturation(cc);
    float max = b+8;
    float min = b-8;
    if(max>100){
      max = 100;
      float over = max-100;
      min = min-over;
    }
    if(min<0){
      min =0;
      float under = 0-min;
      max = max+under;
    }
    currentBrightness = (random(min,max));
    currentColor = color(hue,saturation,currentBrightness);
    setBrightness = true;
  }
  
  public boolean brightnessIsSet(){
    return setBrightness;
  }
  
  public color getFourBitColor(){
    return currentColor;
  }
  
  public void getColorPixelate(){
    
    /* largeProfile.loadPixels();
      int totalSquares = 0;
      for(int i =0; i<wdth;i+=pixelFactorX){
        for(int j = 0; j<hght; j+=pixelFactorY){
          totalRed = new float[1];
          totalGreen = new float[1];
          totalBlue = new float[1];
          float averageRed;
          float averageGreen;
          float averageBlue;
            for(int k=i;k<i+pixelFactorX;k++){
              for(int l=j;l<j+pixelFactorY;l++){     
                 int locPix = (k+x)+(l+y)*width;
                 int imgPix = k+l*wdth;
                 float r = red(largeProfile.pixels[imgPix]);
                 float g = green(largeProfile.pixels[imgPix]);
                 float b = blue(largeProfile.pixels[imgPix]);
                 totalRed[0] = totalRed[0]+r;
                 totalGreen[0] = totalGreen[0]+g;
                 totalBlue[0] = totalBlue[0]+b; 
            }
        }
           averageRed = totalRed[0]/totalPixSquare;
           averageGreen = totalGreen[0]/totalPixSquare;
           averageBlue = totalBlue[0]/totalPixSquare;
           squares[totalSquares]= color(averageRed,averageGreen,averageBlue);
           totalSquares++;
        }
      }*/
    
  }
  
}
