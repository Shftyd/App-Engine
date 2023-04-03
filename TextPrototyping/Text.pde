//Global Variable
PFont titleFont;
//
void textSetup() {
  /*
  String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
   titleFont = createFont ("Harrington", 55); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
}// End textSetup
//
void preTextDraw() {
  fill(ink); //Ink, hexidecimal copied from Color Selector
  textAlign (alignHorizontal, alignVertical); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, height); //Change the number until it fits, largest font size
  //textFont() has option to combine font declaration with textSize()
}// End textDraw
//
void textDraw() {}// 
void textKeyPressed() {
}// End textKeyPressed
//
void textMousePressed() {
}//End textMousePressed
//
//End Text SubProgram
