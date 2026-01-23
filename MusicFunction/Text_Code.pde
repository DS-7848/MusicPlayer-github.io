/*
-Easy Text, with default font and size
 -
 */
//
void drawText() {
  textdraw();
  songTitle();
}//end of code for draw text
void easyTextQuitButton() {
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*1/2);
}//end for easy text code
//
//end subprogram text code
void textSetup() {
  fontSize = appHeight;
  fontSize = stringDivHeight;
  String gabriola = "Gabriola";
  titleFont = createFont(gabriola, fontSize);
  //
  float fontSizeGabriola = 80.0;
  float gabriolaAspectRatio = fontSizeGabriola / stringDivHeight;
  fontSize = stringDivHeight*gabriolaAspectRatio;
}//End of code for text setup
//
void textdraw() {
  textFont(titleFont, fontSize);
  float constantDecrease = 0.99;
  int iWhile = 0;
  while (textWidth(playListMetaData[currentSong].title()) > stringDivWidth) {
    iWhile++;
    fontSize *= constantDecrease;
    textFont(titleFont, fontSize);
  }
  //println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", stringDivWidth-textWidth(playListMetaData[currentSong].title()), "\tUsing", constantDecrease*100+"%");
}//end of code for text draw
void songTitle() {
  textAlign (CENTER, CENTER);
  fill(titleInk);
  text(songTitle, stringDivX, stringDivY, stringDivWidth, stringDivHeight);
  fill(resetInk);
}//end of code for song title
