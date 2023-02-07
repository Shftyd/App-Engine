import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
String Path = new File("").getAbsolutePath(); //Exported
String directory = "\\FS-052\studuser$\Gr11\a.harding\My Documents\GitHub\app-engine-review\App_Engine"; //Not exported
//
void setup() 
{
  File Dir = new File(path);//NULL is not export
  File[] Filelist;
  if (dir == null) {
  dir = new Fule(directory);
  Filelist = dir.listFiles();
  for (File file : Filelist) {
     if (file.isFile() ) {
       if ( file.toString().endsWith(".mp3") ) {
         songs = minin.loadFile( file.getName() );
       }
     }
  }
  } else {
  }//Catch when nULL, not expoted
  FileList = dir.listFiles(); //Exported Folder
  
}//End setup
//
void draw() {}//End draw
//
void keyPressed() {}//End keyPerssed
//
void mousePressed() {}//End mousePressed
//
//End MAIN program s(Driver)
