//Global Variable
PFont font;
color ink, purpleInk = #131FE8, whiteInk = #FFFFFF; //Not Nightmode Friendly
int alignHorizontal, alignVertical;// Display or CANVAS Values
String string = "Global Values of String", stringAlternate = "XX";
//
void textSetup() {
  /*
  String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  font = createFont ("Harrington", 30); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
}// End textSetup
//
void preTextDraw( float height, color purpleInk, int alignHorizontal, int alignVertical, PFont font ) {
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  textAlign (alignHorizontal, alignVertical); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, height);//Parameters: font & fontSize
  //textFont() has option to combine font declaration with textSize()
}// End textDraw
//
void textDraw( float height, color purpleInk, int alignHorizontal, int alignVertical, PFont font, String string, float rectX, float rectY, float rectWidth, float rectHeight ) {
  preTextDraw( height, purpleInk, alignHorizontal, alignVertical, font );//Called Passing Parameters
  //textSize: textWidth(STRING), rectWidth, startingFontSize
  textSize(textCalculator(height, string, rectWidth));
  text(string, rectX, rectY, rectWidth, rectHeight);
  textReset();
}//End textDraw
//
void textReset() {
  fill(whiteInk);
}// End textReset
//
float textCalculator( float size, String string, float rectWidth ) {
  textSize(size); //For textWidth sizing
  while ( textWidth(string) > rectWidth )
  {
    size = size * 0.99; //size-- will do pixels
    textSize(size);
  }
  return size;
}// End textCalculator
//
void textKeyPressed() {
}// End textKeyPressed
//
void textMousePressed() {
}//End textMousePressed
//
//End Text SubProgram
