/* prototyping text
 - copy a rectangel from the 2D Music Button Shapes
 -add a rectangle to put text in
 -note:  could also be a "HoverOver" Feature
 */
//
void setup() {
  fullScreen();
  flatText();
  rectSetup();
  textSetup();//must be void setup
  //Blow
  textDraw( height, purpleInk, CENTER, CENTER, font, string, rectX, rectY, rectWidth, rectHeight );//can be anywhere
  textDraw( height, purpleInk, CENTER, CENTER, font, stringAlternate, rectX, rectY+height*1/4, rectWidth, rectHeight );//can be anywhere
}// End setup
//
void draw() {
  rectDraw();
}// End draw
//
void keyPressed() {
}// End keyPressed
//
void mousePressed() {
}// End mousePressed
//
void flatText() { //Reviewing Introductory Text Code
  //Variables Needed, usually Global Variables
  float textRectX, textRectY, textRectWidth, textRectHeight;
  PFont font;
  color purpleInk= #131FE8, resetWhiteInk=#FFFFFF; //Not nice for Night Mode, Blue Content
  String string = "I need off the learning bus! Spring Break is not over.";
  //
  //Population, from display
  textRectX = width*1/5;
  textRectY = height*1/10;
  textRectWidth = width*3/5;
  textRectHeight = height*1/10;
  //
  rect( textRectX, textRectY, textRectWidth, textRectHeight );
  /*
   println("Start of Console");
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  // Choose your font now
  font = createFont ("Arial", 55); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
  //
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Horiztonal Values (X): [LEFT | CENTER | RIGHT]
  //Vertical Values (Y): [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, height); //Change the number until it fits, largest font size
  textSize( 30 ); //Change the number until it fits, largest font size
  //
  //Printing Text on the CANVAS
  text( string, textRectX, textRectY, textRectWidth, textRectHeight );
  //
  fill(resetWhiteInk);
  //
}//End Flat Text Review
//
//End Main Program
