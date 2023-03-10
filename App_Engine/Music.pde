//Gloabal Variables
Minim minim; //cretes an object to access all functions
AudioPlayer[] songs = new AudioPlayer[5]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//AudioPlayer[] soundEffects = new AudioPlayer [0];
String pathway, FunKid, Ghostbusters, IceandFire, ItWasaTime, Jump;
int currentSong=0;
Boolean autoPlayOn=false;
//
void musicSetup() {
//
minim = new Minim (this);
//
//Set the Deirectory or Pathway to the music
//
//Reminder : finish OS_Level Code to auto rea pathway and files (See OS)
//
concatenationOfMusicFiles();
songs[0] = minim.loadFile( pathway + FunKid );
songs[1] = minim.loadFile( pathway + Ghostbusters);
songs[2] = minim.loadFile( pathway + IceandFire );
songs[3] = minim.loadFile( pathway + ItWasaTime );
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
  songs[currentSong].unmute();
} else if (  songs[currentSong].position() >=  songs[currentSong].length()*90/100 ) {
  //Students to ifnsih SMARTER Mute Button
  //ERROR: music player breaks if song finishes
  /* Ideas
  - rewind the songs
  - play the next song automatically
  - play of notification to choose the next song
  */
  songs[currentSong].rewind(); //simple solution, contains ERROR
}  else {
  songs[currentSong].mute();
    }
  }//End Mute Button

//
//forward & reverse skip
 if ( key == 'f' || key == 'F' ) {
   //skips forward to end of song
   //ERROR: if at end, plays beginning
 songs[currentSong].skip(1000); //parameter in milliseconds
 } else if ( songs[currentSong].position() >=  songs[currentSong].length()*90/100 ) {
 }  else {
   
   //ERROR catch: if end of snog, then next song
 }//end forwarsd
 
 if ( key == 'r' || key == 'R' ){
   //spamming R means start playing at beginning of song
   songs[currentSong].skip(-1000); //parameter in illiseconds
 } // end reverse
 //
 //single loop
 //if (key == '1') songs[currentSong].loop(1); //ERROR
   if (key == '1') {
   delay(songs[currentSong].length() - songs[currentSong].position() ); 
   //ERROR: delay stops all player functions, computer doesn't recognize if
   //       song is playing
   songs[currentSong].loop(0);
 }//End single loop
 //
 //loop infinite times
 if ( key <= '9' && key != '1') {
   //finish playign current song, then replay once
   delay( songs[currentSong].length() - songs[currentSong].position() );
   //ERROR; delay stops all player functions, computer doenst recognize if songs is playing
   songs[currentSong].loop(-1); //parameter is empty or -1
 }//End infinite times
 //
 //stop
 if ( key == 's' || key == 'S') {//STOP Button
 //note: include soft "PAUSE" for first 15 seconds of STOP
 //note: include auto prevoid & next track if STOP at beginning or end of file
 if ( songs[currentSong].isPlaying() ) { 
 songs[currentSong].pause(); 
 songs[currentSong].rewind(); 
 } else { 
 songs[currentSong].rewind(); 
 }
 }
 //
 //play-pause
 if (key == 'p' || key == 'P') {//play-pause button
 if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
 } else if (songs[currentSong].position() >=  songs[currentSong].length()*90/100) {
   // student to finish
   // .pause(), .rewind(), then cue next song
   //CAUTON: without code, this conditional will not do anything
 } else {
   songs[currentSong].play(); ///no auto rewind like loop()
 }
 } 
 //
  //Autoplay Button
  if ( key == 'o' || key == 'O'  ) {
    if ( autoPlayOn == false ) {
      autoPlayOn = true;
    } else {
      autoPlayOn = false;
    }
  }//End Autoplay
  //
  //Next Song Button
  //Note: very simple NEXT Button, needs to be smarter
  if ( key == 'n' || key =='N' ) {
    if ( songs[currentSong].isPlaying() ) {
  
    } else if  ( currentSong == songs.length - 1) { //ERROR Catch: ArrayOutOfBounds
    currentSong = songs.length - songs.length; //Intentoin is Zero
    songs[currentSong].rewind();
    } else { 
      currentSong++;
      songs[currentSong].rewind();
      
    }
  }//End Next Song Button
  //
  //Previous Song Button, Back Button
  //Students to develop, based on next button
  //if ( key == 'b' || key =='B' ) {} //End Previous Song Button or Back Button
  //
 if( key == 'b' || key =='B' ) {
    if ( songs[currentSong].isPlaying() ) {
    } else if  ( currentSong == songs.length + 1) { //ERROR Catch: ArrayOutOfBounds
    currentSong = songs.length + songs.length; //Intentoin is Zero
    songs[currentSong].rewind();
    } else { 
      currentSong--;
      songs[currentSong].rewind();
      
    }
  }//End Previous Song Button
 //
}// end key pressed

void mousePressedMusic() {
}//end mousePressedMusic
//
void concatenationOfMusicFiles() { 
   pathway = "songs/";
   FunKid = "Fun Kid.mp3";
   Ghostbusters = "Ghostbusters.mp3";
   IceandFire = "Ice & Fire.mp3";
   ItWasaTime = "It Was a Time.mp3";
   Jump = "Jump.mp3";
}//End concatenation
//
void autoPlayMusic() {
  if ( autoPlayOn ) {
    //if () {} if else () {} else {}
    //ex#1 .poition() >= .length(), then rewind(), currentSong+=1, .play()
    //Ex#2: .isPlaying(), when false rewind(), currentSong+=1, .play()
  }
}//End Auto Play Music
//
//End Music SubProgram
