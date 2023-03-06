//Gloabal Variables
Minim minim; //cretes an object to access all functions
AudioPlayer[] songs = new AudioPlayer[5]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer[] soundEffects = new AudioPlayer [0];
String pathway, Fun Kid, Ghostbusters, Ice & Fire, It Was a Time, Jump;
int currentSong=0;
//
void musicSetup() {
//
minim = new Minim (this);
//
//Set the Deirectory or Pathway to the music
//
//Reminder : finish OS_Level Code to auto rea pathway and files (See OS)
//
concatentionOfMusicFiles();
songs[0] = minim.loadFileI pathway + Fun Kid );
songs[1] = minim.loadFile( pathway + Ghostbusters);
songs[2] = minim.loadFile( pathway + Ice & Fire );
songs[3] = minim.loadFile( pathway + It Was a Time );
songs[4] = minim.loadFile( pathway + Jump );
//soundEffects[] = minim.loadFile( path + soundEffectFile );
//
} //End musicSetup
//
void drawMusic() {}
//
void keyPressedMusic() {
//Music keyboard Short Cuts
//Prototyping to copy when it works
if ( key == 'm'|| key == 'M') {
if ( songs[currentSong].isMuted() ) { 
  song[currentSong].unmute();
} else if (  songs[currentSong].position() >=  songs[currentSong].length()*4/5 ) {
  //Students to ifnsih SMARTER Mute Button
  //ERROR: music player breaks if song finishes
  /* Ideas
  - rewind the songs
  - play the next song automatically
  - play of notification to choose the next song
  */
  songs[currentSong].rewind(); //simple solution, contains ERROR
}  else {
  song[currentSong].mute();
    }
  }//End Mute Button

//
//forward & reverse skip
 if ( key == 'f' || key == 'F' ) {
   //skips forward to end of song
   //ERROR: if at end, plays beginning
 songs[currentSong].skip(1000); //parameter in milliseconds
 } if else ( songs[currentSong].position() >=  songs[currentSong].length()*4/5 ) {
 }  
   //ERROR catch: if end of snog, then next song
  //end forwarsd
 
 if ( key == 'r' || key == 'R' ){
   //spamming R means start playing at beginning of song
   songs[currentSong].skip(-1000); //parameter in illiseconds
 } // end reverse
 //
 //single loop
 if ()  songs[currentSong].loop(1);
 
}// end key pressed

void mousePressedMusic() {}
//
void concatenationOfMusicFiles() { 
   pathway = "songs/";
   Fun Kid = "Fun Kid.mp3";
   Ghostbusters = "Ghostbusters.mp3";
   Ice & Fire = "Ice & Fire.mp3";
   It Was a Time = "It Was a Time.mp3";
   Jump = "Jump.mp3";


}
