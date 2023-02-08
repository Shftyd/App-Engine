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
String directory = "//FS-052/studuser$/Gr11/a.harding/My Documents/GitHub/app-engine-review/App_Engine"; //Not exported
//
Minim minim; //cretes an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
void setup() {
  //
 // minim = new Minim (this); //load from data irectory, loadFile should also load from project folder, like loadImage
  //
  //when Prototyping, songs is not loadd from anyDirectory
  File anyDirectory = new File(path); //used when exported
  println ("Exported Directory", anyDirectory);
  File githubDirectory = new File(directory); //Used when prototyping
  File[] FileListAnyDirectory = anyDirectory.listFiles();
  printArray(FileListAnyDirectory);
  println("items in FileList:", FileListAnyDriectory.length);
  int i = 0; //songs index
  for (File file : FileListAnyDirectory) {
    if ( file.isFile() ) {
      if ( file.toString().endsWith(".mp3") ) {
        println("any Directory is working");
        songs[i] = minim.loadFile( file.getName() );
        i = i + 1;
      }
    }
  }
  //
  //When prototyping, songs is not loaded from anyDirectory
  
  File[] FileListGitHubDir = githubDirectory.listFiles();
  if ( songs[2] ==null) {
    printArray(FileListGitHubDir);
    for ( File file : FileListGitHubDir ) {
      if ( file.isFile() ) {
        if ( file.toString().endsWith(".mp3") ) {
          println("File Name .mp3 only",file.getName () );
          songs[i] = minim.loadFile(file.getName());
          i+=1;
        }
      }
    }
  }
  //
  File Dir = new File(path);//NULL is not export
  File[] Filelist;
  if (dir == null) {
  dir = new File(directory);
  Filelist = dir.listFiles();
  for (File file : Filelist) {
     if (file.isFile() ) {
       if ( file.toString().endsWith(".mp3") ) {
         songs = minim.loadFile( file.getName() );
         1+=1;
       }
     }
  }
  } else {
  }//Catch when nULL, not expoted
   songs[2].loop(0); //Change the index manually
  
}//End setup
//
void draw() {}//End draw
//
void keyPressed() {}//End keyPerssed
//
void mousePressed() {}//End mousePressed
//
//End MAIN program s(Driver)
