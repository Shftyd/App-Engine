//Text
void stopText() { //Reviewing Introductory Text Code
  //Variables Needed, usually Global Variables
  //float textRectX, textRectY, textRectWidth, textRectHeight;
  PFont font;
  color blackInk= #000000, resetWhiteInk=#FFFFFF; //Not nice for Night Mode, Blue Content
  String string = "Stop";
  //
 /* //Population, from display
  textRectX = width*1/5;
  textRectY = height*1/10;
  textRectWidth = width*3/5;
  textRectHeight = height*1/10;
  //
 */ rect( stopX, stopY, stopWidth, stopHeight );
  /*
   println("Start of Console");
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  // Choose your font now
  font = createFont ("Arial", 20); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
  //
  fill(blackInk); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Horiztonal Values (X): [LEFT | CENTER | RIGHT]
  //Vertical Values (Y): [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, height); //Change the number until it fits, largest font size
  textSize( 30 ); //Change the number until it fits, largest font size
  //
  //Printing Text on the CANVAS
  text( string, stopX, stopY, stopWidth, stopHeight );
  //
  fill(resetWhiteInk);
  //
}//End Flat Text Review
