//Global Variable List
int appWidth, appHeight;
float quitDivX, quitDivY, quitDivWidth, quitDivHeight;
float playDivX, playDivY, playDivWidth, playDivHeight;
float playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3;
float stringDivX, stringDivY, stringDivWidth, stringDivHeight;
//
Boolean playButton=false, quitButton=false;
//
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color quitButtonInk;
color playColorBackground, playColorSymbol, playColorBackgroundActivated, playColorSymbolActivated;
color quitBackground, quitBackgroundActivated;
color titleInk;
color purpleInk;
Boolean nightMode=false;
//
Minim minim;
int numberOfSongs = 3;
int numberOfSoundEffects = 1;
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs;
//
AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs];
//
String songTitle;
float fontSize=0;
PFont titleFont;
//
//end of code for global variables
