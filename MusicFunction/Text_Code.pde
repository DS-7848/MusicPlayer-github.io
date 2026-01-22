/*
-Easy Text, with default font and size
 -
 */
//Global Variables
String songTitle;
float fontSize;
PFont titleFont;
//
void easyTextQuitButton() {
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5);
}//end for easy text code
//
//end subprogram text code
void textSetup() {
  fontSize = appHeight;
  String gabriola = "Gabriola";
  titleFont = createFont(gabriola, fontSize);
  //
  float fontSizeGabriola = 80.0;
  float gabriolaAspectRatio = fontSizeGabriola / stringDivHeight;
  fontSize = stringDivHeight*gabriolaAspectRatio;
}//End of code for text setup
//
void textDraw() {
  fill(purpleInk);
  textAlign (CENTER, TOP);
  textFont(titleFont, fontSize);
  //
  float constantDecrease = 0.99;
  int iWhile = 0;
  while (textWidth(title) > stringDivWidth) {
    iWhile++;
    fontSize *= constantDecrease;
    textFont(titleFont, fontSize);
  }
  println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", stringDivWidth-textWidth(title), "\tUsing", constantDecrease*100+"%");
  text(title, stringDivX, stringDivY, stringDivWidth, stringDivHeight);
  fill(resetInk);
}//end of code for text draw
