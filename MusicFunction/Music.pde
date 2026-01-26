/* Music Subprogram
 */
//
void musicSetup() {
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
    metaDataFileLoading();
    currentSong++;
  }//end for file code
  currentSong=0;
  //
  String imagesDirectory = upArrow + "Images/";
  String fileExtension_jpg = ".jpg";
  for (int i=0; i<numberOfSongs; i++) {
    file = imagesDirectory + songName[i] + fileExtension_jpg;
    albumArt[i] = loadImage(file);
  }//end for image loading
  //
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
}//end for music setup
//end of music subprogram
