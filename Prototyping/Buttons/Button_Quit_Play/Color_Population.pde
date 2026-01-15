void colorPopulation() {
  nightModeVariables();
  codingColors();
}//end of color populations
//
void nightModeVariables() {
  if (nightMode==false) {
    nightMode=true;
  } else {
    nightMode=false;
  }//end for night mode variables code
  //this code converts the variable to the opposite. true to false forces it to change from on to off.
  void codingColors() {
    color black = 0; //Gray Scale, much smaller color, 256 bits
    color white = 255; //Gray Scale
    //CANVAS: default background and ink
    resetBackground = white;
    resetInk = black;
    //Button Colors
    color red = #E53131;
    color green = #0F9323;
    color cyan = #23E8E3;
    color grayscale = 256/2; //Example of Gray Scale, Small amount of memory needed
    color gray = #677169; //Example of Gray Scale, Large amount of memory needed
    playColorBackground = green;
    playColorSymbol = red;
    playColorBackgroundActivated = cyan;
    playColorSymbolActivated = red;
    quitBackground = white;
    quitBackgroundActivated = red;
    quitButtonInk = black;
  }
