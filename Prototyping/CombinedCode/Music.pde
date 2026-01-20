//Global Variables
Minim minim; //initiates an entire class
int numberOfSongs = 3; //best practice
int numberOfSoundEffects = 1; //best practice
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //zero, math property
//
//void setup() {
  //Display
  size(700, 500); //Width //Height
  //fullScreen(); //DisplayWidth //DisplayHeight
  int appWidth = width;
  int appHeight = height;
  //
  //Music Loading - STRUCTURED review
  minim = new Minim(this);
  String upArrow = "../../../";
  String musicFolder = "Music/"; //Developer specific
  String songName[] = new String[numberOfSongs];
  songName[0] = "BestOfMe";
  songName[1] = "Cold";
  songName[2] = "Crown";
//
for (int i=0; i<numberOfSongs; i++){
  String file = musicDirectory + songName[i] + fileExtension_mp3;
}
  String fileExtension_mp3 = ".mp3";

  //
  String musicDirectory = upArrow + musicFolder; //concatenation
  String file = musicDirectory + songName[i] + fileExtension_mp3;
  println("Music Pathway", musicDirectory);
  println("Full Music File Pathway", file);

  playList[i] = minim.loadFile(file); //error: verify spelling and that the library was installed correctly
  //
  //ERROR Check Music and Sound Effect Variables
  //Thrown by commenting out FILE, playList[] or soundEffects[]
  if ( playList[currentSong]==null || soundEffects[currentSong]==null) {
    //See FILE code or the minim.loadFile
    println("The Play List or Sound Effects aren't loading correctly");
    printArray(playList);
    printArray(soundEffects);
    /*
    println("Music Pathway", musicDirectory);
      println("Full Music File Pathway", file);
      */
  } //End of ERROR Check Music and Sound Effect Variables
  //
  //Testing Audio Files
  playList[currentSong].play();
  //soundEffects[currentSong].play();
