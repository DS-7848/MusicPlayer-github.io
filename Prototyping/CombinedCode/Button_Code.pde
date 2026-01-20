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
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
}// end for the divs
//
void musicShapes() {
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
}//end for the music shapes code
//
void quitButtonActivated() {
  fill(quitBackgroundActivated);
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  fill(resetBackground);
  fill(quitButtonInk);
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5);
  fill(resetInk);
}
//
void quitButtonInactive() {
  fill(quitBackground);
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  fill(resetBackground);
  fill(quitButtonInk);
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5);
  fill(resetInk);
}
//
void playButtonActivated() {
  playButton = true;
  fill(playColorBackgroundActivated);
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
  fill(playColorSymbolActivated);
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
  fill(resetBackground);
}
//
void playButtonInactive() {
  playButton = false;
  fill(playColorBackground);
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
  fill(playColorSymbol);
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
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
