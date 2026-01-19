/* Button Table
 -quitButton
 -DIV shapes
 -Music Shapes
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
//End for the Code related to buttons
