import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
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
/*
void settings() {
 println(displayWidth, displayHeight);
 int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth ;
 shorterSide *= 0.9; //90% of the WINDOW Frame
 size(shorterSide, shorterSide);
 println("Display", displayWidth, displayHeight, shorterSide);
 println("canvas Size Variables for setup()", width, height);
 }//End settings
 */
void setup() {
  //display canvas variables
  fullScreen(); //displayWidth //displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  divPopulation();
  //DIVs
  //Color Population
  nightMode=false;
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
  //
}//end for the setup code
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
}//end for the draw code
//
void mousePressed() {
  if ( mouseX>quitDivX && mouseX<quitDivX+quitDivWidth && mouseY>quitDivY &&mouseY<quitDivY+quitDivHeight ) {
    quitButton();
  }
  //Music Play Functions
  if (mouseX>playDivX && mouseX<playDivX+playDivWidth && mouseY>playDivY && mouseY<playDivY+playDivHeight) {
    if ( playButton == false ) {
      println("Should begin the song");
      playButton=true;
    } else {
      playButton = false;
      println("Music is not playing");
    }
  }
}//end for the mouse pressed code
//
void keyPressed() {
  //Note, CAPs Lock on Code: key=='[CAP]' || key=='[lowerCase]'
  //CAUTION: Order Matters
  if (key=='Q' || key=='q') {
    quitButton();
  } //Quit Button
  if (key=='N' || key=='n') {
    colorPopulation();
  }//Night Mode
}//end for the key pressed code
//
//
