/* CAUTION 
  This Code will cause the array songs to be null sometimes.
  This must be error checked
 */
 //appengine
 //pls work this is very annoying
//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables


//
void setup() {
  fullScreen();
  musicSetup();
  songs[currentSong].loop(0);
  //
 //NULL is not export
 //Catch when NULL, not expoted
 
  //
}//End setup
//
void draw() {
 buttonsSetup();
  //Debugging in CONSOLE
  println("Current Song Position", songs[currentSong].position() );
 println("\tEnd of Song:", songs[currentSong].length() );
//
}//End draw
void keyPressed() {  
keyPressedMusic();

//

}//End keyPerssed
//
void mousePressed() {  

}//End mousePressed
//
//End MAIN program s(Driver)
