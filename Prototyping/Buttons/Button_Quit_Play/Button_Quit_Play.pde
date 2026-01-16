import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
int appWidth, appHeight;
float quitDivX, quitDivY, quitDivWidth, quitDivHeight;
float playDivX, playDivY, playDivWidth, playDivHeight;
float playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3;
//
Boolean playButton=false, quitButton=false;
//
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color quitButtonInk;
color playColorBackground, playColorSymbol, playColorBackgroundActivated, playColorSymbolActivated;
color quitBackground, quitBackgroundActivated;
Boolean nightMode=false;
//
void setup() {
  //Display
  size(500, 400);
  //fullScreen()
  appWidth = width;
  appHeight = height;
  //
  //Population
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
  //DIVs
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
  //
  //Color Population
  nightMode=false;
  codingColors();
  color black = 0; //Gray Scale, much smaller color, 256 bits
  color white = 255; //Gray Scale
  //CANVAS: default background and ink
  //
} //End setup
//
void draw() {
  //println ("Mouse Coordinates", mouseX, mouseY);
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
  //
} //End draw
//
void mousePressed() {
  if ( mouseX>quitDivX && mouseX<quitDivX+quitDivWidth && mouseY>quitDivY &&mouseY<quitDivY+quitDivHeight ) {
    quitButton();
  }
  //Music Play Functions
  if(mouseX>playDivX && mouseX<playDivX+playDivWidth && mouseY>playDivY && mouseY<playDivY+playDivHeight) {
  if ( playButton == false ) {
    println("Should begin the song");
    playButton=true;
  } else {
    playButton = false;
    println("Music is not playing");
  }
  }
} //End Mouse Pressed
//
void keyPressed() {
  //Note, CAPs Lock on Code: key=='[CAP]' || key=='[lowerCase]'
  //CAUTION: Order Matters
  if (key=='Q' || key=='q') {
    quitButton();
  } //Quit Button
} //End Key Pressed
void quitButton() {
  noLoop(); //adjusts the exit code location
  exit(); //noLoop() forces the exit to happen here
  println("Final Line of mousePressed and finishes draw()");
}//End Quit Button
//End Main Program
