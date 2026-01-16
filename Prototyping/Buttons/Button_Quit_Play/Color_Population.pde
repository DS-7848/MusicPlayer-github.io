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
}//this code converts the variable to the opposite. true to false forces it to change from on to off.
  void codingColors() {
    color black = 0; //Gray Scale, much smaller color, 256 bits
    color white = 255; //Gray Scale
    color grayscale = 256/2; //Example of Gray Scale, Small amount of memory needed
    color gray = #677169; //Example of Gray Scale, Large amount of memory needed
    //CANVAS: default background and ink
    resetBackgroundDay = white;
    resetInkDay = black;
    resetBackgroundNight = 256/2;
    resetInkNight = int(256*0.80);
    //Button Colors
    color red = #E53131;
    color green = #0F9323;
    color cyan = #23E8E3;
    color darkGray = grayscale;
    color lightGray = gray;
    if (nightMode == true) {
      resetBackground = resetBackgroundNight;
      resetInk = resetInkNight;
      playColorBackground = lightGray;
      playColorSymbol = darkGray;
      playColorBackgroundActivated = darkGray;
      playColorSymbolActivated = lightGray;
      quitBackground = darkGray;
      quitBackgroundActivated = red;
      quitButtonInk = black;
    } else
    {
      resetBackground = resetBackgroundDay;
      resetInk = black;
      playColorBackground = green;
      playColorSymbol = red;
      playColorBackgroundActivated = cyan;
      playColorSymbolActivated = red;
      quitBackground = white;
      quitBackgroundActivated = red;
      quitButtonInk = black;
    }
  }
