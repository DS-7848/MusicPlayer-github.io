import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
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
  //
  divPopulation();
  DIVs();
  musicShapes();
  nightMode=false;
  colorPopulation();
  musicSetup();
  textSetup();
  testMetaData();
  //
}//end for the setup code
//
void draw() {
  //println ("Mouse Coordinates", mouseX, mouseY);
  hoverOver();
  //
  saveSongTitle();
  drawText();
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
  if (key=='P' || key=='p') playList[currentSong].loop(0);
  //
  if (key=='O' || key=='o') { //pause button
    //
    if (playList[currentSong].isPlaying()) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  }
  if (key=='S' | key=='s') { //pause and rewind button
    playList[currentSong].pause(); //press key once
  } else {
    playList[currentSong].rewind(); //press key twice
  }
  if (key=='W' || key=='w') { //next button
    if (playList[currentSong].isPlaying()) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      //
      if (currentSong==numberOfSongs-1) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play();
    } else {
      //
      playList[currentSong].rewind();
      //
      if (currentSong==numberOfSongs-1) {
        currentSong = 0;
      } else {
        currentSong++;
      }
    }
  }
  if (key=='M' || key=='m') { //mute
    if (playList[currentSong].isMuted()) {
      playList[currentSong].unmute();
    } else {
      playList[currentSong].mute();
    }
  }
  if (key=='Y' || key=='y') currentSong = int(random(numberOfSongs)); //does a random song
}//end for the key pressed code
//
//
