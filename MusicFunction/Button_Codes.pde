/* Button Table
 -quitButton
 -DIVs
 -musicShapes
 -hoverover
 */
void quitButton() {
  noLoop(); //adjusts the exit code location
  exit(); //noLoop() forces the exit to happen here
  println("End of quit button");
}//end for the quit button code
//
void DIVs() {
  quitDIV();
  playDIV();
}// end for the divs
void quitDIV() {
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
}//end of quit button div code
void playDIV() {
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
}//end for play button div code
//
void playButtonSymbol() {
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
}//end play button symbol
//
void musicShapes() {
  
}//end for the music shapes code
//
void quitButtonActivated() {
  fill(quitBackgroundActivated);
  quitDIV();
  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
}
//
void quitButtonInactive() {
  fill(quitBackground);
  quitDIV();
  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
}
//
void playButtonActivated() {
  playButton = true;
  fill(playColorBackgroundActivated);
  playDIV();
  fill(playColorSymbolActivated);
  playButtonSymbol();
  fill(resetBackground);
}
//
void playButtonInactive() {
  playButton = false;
  fill(playColorBackground);
  playDIV();
  fill(playColorSymbol);
  playButtonSymbol();
  fill(resetBackground);
}
//
void hoverOver() {
  //Button HoverOver
  if ( mouseX>playDivX && mouseX<playDivX+playDivWidth && mouseY>playDivY && mouseY<playDivY+playDivHeight ) {
    //println("Song should be playing");
    if (playButton == false) playButtonActivated();
  } else {
    playButtonInactive();
    if (playButton == true) playButtonActivated();
  }//End Play Button Hover Over
  if ( mouseX>quitDivX && mouseX<quitDivX+quitDivWidth && mouseY>quitDivY && mouseY<quitDivY+quitDivHeight ) {
    quitButtonActivated();
  } else {
    quitButtonInactive();
  }//End Quit Button Hover Over
}//end code for hover over
//End for the Code related to buttons
