//Global Variables
//
void setup() {
  //Landscape (protrait, square)
  //Populatoin, visual data
  fullScreen(); //displayWidth, displayHeight 
   drawMusicButtons();

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
  reverseX = width * 2/10;
  reverseY = pauseY1;
  reverseWidth = pauseHeight/2;
  reverseHeight = pauseHeight/2;
  //
  forwardX = width * 15/20; 
  forwardY = pauseY1;
  forwardWidth = pauseHeight/2;
  forwardHeight = pauseHeight/2;
  //
  loopX = width * 13/20;
  loopY = pauseY1;
  loopWidth = pauseHeight/2;
  loopHeight = pauseHeight/2;
  //
  muteX = width * 6/20;
  muteY = pauseY1;
  muteWidth = pauseHeight/2;
  muteHeight = pauseHeight/2;
  //
}//End setup
//
void draw() {
  drawMusicButtons();
  rect(pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect(pauseX2, pauseY2, pauseWidth, pauseHeight);

}//End draw
//
void keyPressed () {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program (Driver)
