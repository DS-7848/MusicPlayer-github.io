/* populations
 -divPopulation
 -colorPopulation
 -
 */
//
void divPopulation() {
  quitDivX = appWidth * 9/10;
  quitDivY = appHeight * 0/10;
  quitDivWidth = appWidth * 1/10;
  quitDivHeight = appHeight * 1/10;
  playDivX = appWidth * 4/10;
  playDivY = appHeight * 4.5/10;
  playDivWidth = appWidth * 2/10;
  playDivHeight = appHeight * 1/10;
  playSymbolX1 = playDivX + playDivWidth * 2/8;
  playSymbolY1 = playDivY + playDivHeight * 1/4;
  playSymbolX2 = playSymbolX1 + playDivWidth * 1/2;
  playSymbolY2 = playDivY + playDivHeight * 1/2;
  playSymbolX3 = playDivX + playDivWidth * 2/8;
  playSymbolY3 = playDivY + playDivHeight * 3/4;
  //
  stringDivX = appWidth*1/4;
  stringDivY = appHeight*1/5;
  stringDivWidth = appWidth*1/3;
  stringDivHeight = appHeight*1/10;
}//end for the div population code
//
void colorPopulation() {
  color black = 0; //Gray Scale, much smaller color, 256 bits
  color white = 255; //Gray Scale
  color grayscale = 256/2; //Example of Gray Scale, Small amount of memory needed
  color gray = #677169; //Example of Gray Scale, Large amount of memory needed
  //CANVAS: default background and ink
  resetBackgroundDay = white;
  resetInkDay = black;
  resetBackgroundNight = 256/2;
  resetInkNight = int(256*0.75);
  //Button Colors
  color red = #E53131;
  color green = #0F9323;
  color cyan = #23E8E3;
  color pink = #E31BB8;
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
    titleInk = darkGray;
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
    titleInk = pink;
  }
  //
}//end for color population code
//
//end population program
