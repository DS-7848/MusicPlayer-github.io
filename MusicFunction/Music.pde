/* Music Subprogram
*/
//
//Global Variables
Minim minim;
int numberOfSongs = 3;
int numberOfSoundEffects = 1;
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //must have a sum of 0
//
minim = new Minim(this);
String upArrow = "../";
String musicFolder = "Music/";
String soundEffectsFolder = "Music/";
//
String[] songName = new String[numberOfSongs];
songName[0] = "BestOfMe";
songName[1] = "Cold";
songName[2] = "Crown";
//
String soundEffect = "Music_Sound Effects_Wood_Door_Open_and_Close_Series";
String fileExtension_mp3 = ".mp3";
//
String musicDirectory = upArrow + musicFolder;
String soundEffectsDirectory = upArrow + soundEffectsFolder;
String file;
//
for (int i=0; i<numberOfSongs; i++) {
  file = musicDirectory + songName[i] + fileExtension_mp3;
  playList[currentSong] = minim.loadFile(file);
  currentSong++;
}//end for file code
currentSong=0;
file = soundEffectsDirectory + soundEffect + fileExtension_mp3;
soundEffects[currentSong] = minim.loadFile(file);
//
for (int i=0; i<numberOfSongs; i++) {
  if (playList[i]==null || soundEffects[currentSong]==null) {
    println("Error with loading of audio");
    printArray(playList);
    printArray(soundEffects);
  }
}//
//end of music subprogram
