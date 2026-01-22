/*
-Easy Text, with default font and size
 -
 */
//Global Variables
String songTitle;
//
void easyTextQuitButton() {
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5);
}//end for easy text code
//
//end subprogram text code
void textSetup() {
  float fontSize = appHeight;
  PFont titleFont;
  String gabriola = "Gabriola";
  titleFont = createFont(gabriola, fontSize);
  //
  float fontSizeGabriola = 80.0;
  float gabriolaAspectRatio = fontSizeGabriola / stringDivHeight;
  fontSize = stringDivHeight*gabriolaAspectRatio;
}//End of code for text subprogram
