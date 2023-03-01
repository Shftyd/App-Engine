/* CAUTION 
  This Code will cause the array songs to be null sometimes.
  This must be error checked
 */
//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
String Path = new File("").getAbsolutePath(); //Exported Program
String directory = "//FS-052/studuser$/Gr11/a.harding/My Documents/GitHub/app-engine-review/App_Engine/songs"; //Not exported

//
void setup() {
  buttonsSetup();
  musicSetup();
  //
 //NULL is not export
 //Catch when NULL, not expoted
   songs[currentSong].loop(0); //Change the index manually
  
}//End setup
//
void draw() {
  //Debugging in CONSOLE
  println("Current Song Position", songs[currentSong].position() );
  println("\tEnd of Song:", songs[currentSong].length() );
}//End draw
//
void keyPressed() {  
keyPressedMusic();
//

}//End keyPerssed
//
void mousePressed() {  

}//End mousePressed
//
//End MAIN program s(Driver)
