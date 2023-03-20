/* prototyping progarm for logical button prssing
*/
//global variables
//
float stopX, stopY, stopWidth, stopHeight;
void setup() {
  fullScreen();
  //
  //population, before moving to VOID in a Subprogram
  float startingX = width * 1/2;
  float startingY = height * 1/2;
  float buttonReferentMeasure = width * 1/9;// 7 buttons plus 2 button of space
  float buttonSide = buttonReferentMeasure; //All buttons are squares
  //
  stopX = startingX - 4.5 * (buttonReferentMeasure) ;
  stopY = startingY ;
  stopWidth = buttonSide;
  stopHeight = buttonSide;
}//end setup
//  
void draw() {
  //example STOP button: button is the logical recangle
  rect(stopX, stopY, stopWidth, stopHeight);
}//end draw
//
void keyPressed() {
}//end keypressed
//
void mousePressed() {
  if (mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight) prinln("Button Pressed");
}//end mousepressed
//
//end main program
