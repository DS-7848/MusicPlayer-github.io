//personal version of music_sketch

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //initiates an entire class
int numberOfSongs = 3; //best practice
int numberOfSoundEffects = 1; //best practice
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //zero, math property
//
//Display
size(700, 500); //width, height
//fullScreen(); //displayWidth //displayHeight
int appWidth = width;
int appHeight = height;
//
//Music Loading - STRUCTURED review
minim = new Minim(this);
String upArrow = "../../";
String musicFolder = "Music/"; //Developer specific
String songName1 = "BestOfMe";
String fileExtension_mp3 = ".mp3";
//
String musicDirectory = upArrow + musicFolder; //concatenation
String file = musicDirectory + songName1 + fileExtension_mp3;
println("Music Pathway",musicDirectory);
println("Full Music File Pathway", file);

playList[currentSong] = minim.loadFile(file); //error: verify spelling and that the library was installed correctly
//
println("Did the music and sound load correctly");
printArray(playList);
