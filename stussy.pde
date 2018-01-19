
logo onScreen;

void setup() {
  size(1050,782);
  //size(1365,1017);
  onScreen = new logo();
  onScreen.setImages();
}

void draw(){
  //scale(1.3);
  background(0);
  
  onScreen.display();
  onScreen.colorsAliens();
  
  if(onScreen.getModePixelating()){
      onScreen.colorsPixelating();
  }
  if(onScreen.getModeGlitching()){
      onScreen.colorsGlitching();
  }
  
}
