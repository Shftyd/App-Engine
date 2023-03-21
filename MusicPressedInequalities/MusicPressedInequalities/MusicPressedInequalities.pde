/* prototyping progarm for logical button prssing
*/
//global variables
//
//float stopX, stopY, stopWidth, stopHeight;
boolean stopHoverOver=false;
boolean muteHoverOver=false;
boolean loopHoverOver=false;
//
void setup() {
  fullScreen();
  //
  //population, before moving to VOID in a Subprogram
  float startingX = width * 1/2;
  float startingY = height * 1/2;
  float buttonReferentMeasure = width * 1/9;// 7 buttons plus 2 button of space
  float buttonSide = buttonReferentMeasure; //All buttons are squares
  //
 /* stopX = startingX - 4.5 * (buttonReferentMeasure) ;
  stopY = startingY ;
  stopWidth = buttonSide;
  stopHeight = buttonSide;*/
   

  float musicButtonDrawX = width * 1/2;
  float musicButtonDrawY = height * 1/2;
  pauseScaleWidth = 1.0/50.0;//used to change x-axis
  pauseScaleHeight = 2.0/10.0; //used to change y-axis
  println(pauseScaleWidth);
  pauseWidth = width * pauseScaleWidth;
  pauseX1 = musicButtonDrawX - pauseWidth - pauseWidth*1/2;
  pauseY1 = musicButtonDrawY;
  pauseX2 = musicButtonDrawX + pauseWidth*1/2;
  pauseY2 = pauseY1; 
  pauseHeight =height * pauseScaleHeight;
  //
  stopX = musicButtonDrawX - (width * 14/30);
  stopY = height * 2/3;
  stopWidth = pauseHeight/2;
  stopHeight = pauseHeight/2;
  //
  reverseX1 = width * 7/20;
  reverseY1 = height * 10/20;
  reverseX2 = width * 7/20;
  reverseY2 = height * 12/20;
  reverseX3 = width * 6/20;
  reverseY3 = height * 11/20;
  
  reverseX4 = width * 6/20;
  reverseY4 = height * 10/20;  
  reverseX5 = width * 6/20;
  reverseY5 = height * 12/20;
  reverseX6 = width * 5/20;
  reverseY6 = height * 11/20;
 /*
 reverseRectX = ;
 reverseRectY = ;
 reverseRectWidth = ;
 reverseRectHeight = ;
*/  //
   forwardX1 = width * 13/20;
   forwardY1 = height * 10/20;
   forwardX2 = width * 13/20;
   forwardY2 = height * 12/20;
   forwardX3 = width * 14/20;
   forwardY3 = height * 11/20;
   
   forwardX4 = width * 14/20;
   forwardY4 = height * 10/20;
   forwardX5 = width * 14/20;
   forwardY5 = height * 12/20;
   forwardX6 = width * 15/20;
   forwardY6 = height * 11/20;
  //
  loopX1 = width * 8/10;
  loopY1 = pauseY1;
  loopWidth1 = pauseHeight/2;
  loopHeight1 = pauseHeight/6;
  
  loopX2 = width * 8/10;
  loopY2 = height * 11/20;
  loopWidth2 = pauseHeight/2;
  loopHeight2 = pauseHeight/6;
  
  loopRectX = width * 8/10;
  loopRectY = pauseY1;
  loopRectWidth = pauseHeight/2;
  loopRectHeight = pauseHeight/2;
  //
  muteX = width * 3/20;
  muteY = pauseY1;
  muteWidth = pauseHeight/2;
  muteHeight = pauseHeight/2;
  //
 x1 = width * 19/40;
 y1 = height * 1/2;
 x2 = width * 19/40;
 y2 = height * 2/3;
 x3 = width * 11/20;
 y3 = height * 6/10;
 //
 previousSongX1 = width * 6/20;
 previousSongY1 = height * 13/20;
 previousSongX2 = width * 6/20;
 previousSongY2 = height * 15/20;
 previousSongX3 = width * 5/20;
 previousSongY3 = height * 14/20;
 
 previousSongX = width * 9.5/40;
 previousSongY = height * 13/20;
 previousSongWidth = width * 1/80;
 previousSongHeight = height * 3/30;
 //
  nextSongX1 = width * 14/20;
  nextSongY1 = height * 13/20;
  nextSongX2 = width * 14/20;
  nextSongY2 = height * 15/20;
  nextSongX3 = width * 15/20;
  nextSongY3 = height * 14/20;
  
  nextSongX = width * 15/20;
  nextSongY = height * 13/20;
  nextSongWidth = width * 1/80;
  nextSongHeight = height * 3/30;
}//end setup
//  
void draw() {
  //example STOP button: button is the logical recangle
   drawMusicButtons();
  if ( mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight )  
  {
    println("Hovering Over Stop Button");
  } else 
  {
  println("");
  }
  //
  if ( mouseX>=muteX && mouseX<=muteX+muteWidth && mouseY>=muteY && mouseY<=muteY+muteHeight )  
  {
    println("Hovering Over Mute Button");
  } else 
  {
  println("");
  }
  //
  if ( mouseX>=loopRectX && mouseX<=loopRectX+loopRectWidth && mouseY>=loopRectY && mouseY<=loopRectY+loopRectHeight )  
  {
    println("Hovering Over loop Button");
  } else 
  {
  println("");
  }
  rect(stopX, stopY, stopWidth, stopHeight);
 
}//end draw
//
void keyPressed() {
}//end keypressed
//
void mousePressed() {
  //
  /*
  mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight
  then, add the variables of the rect()
  */
  if ( mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight ) 
  {
    println("Stop Button Pressed");
    stopHoverOver = true;
  }
  //
   /*if ( mouseX>=pauseX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight ) 
  {
    println("Stop Button Pressed");
    stopHoverOver = true;
  }*/
  //
  if ( mouseX>=muteX && mouseX<=muteX+muteWidth && mouseY>=muteY && mouseY<=muteY+muteHeight ) 
  {
    println("Mute Button Pressed");
    muteHoverOver = true;
  }
  //
   if ( mouseX>=loopRectX && mouseX<=loopRectX+loopRectWidth && mouseY>=loopRectY && mouseY<=loopRectY+loopRectHeight ) 
  {
    println("loop Button Pressed");
    loopHoverOver = true;
  }
}//end mousepressed
//
//end main program
