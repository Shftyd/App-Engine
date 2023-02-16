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
  reverseX1 = width * 8/20;
  reverseY1 = height * 10/20;
  reverseX2 = width * 8/20;
  reverseY2 = height * 12/20;
  reverseX3 = width * 7/20;
  reverseY3 = height * 11/20;
  
  reverseX = width * 17/50;
  reverseY = pauseY1;
  reverseWidth = width * 1/70;
  reverseHeight = pauseHeight/2;
  //
   forwardX1 = width * 13/20;
   forwardY1 = height * 10/20;
   forwardX2 = width * 13/20;
   forwardY2 = height * 12/20;
   forwardX3 = width * 14/20;
   forwardY3 = height * 11/20;
   
   forwardX = width * 28/40;
   forwardY = pauseY1;
   forwardWidth = width * 1/70;
   forwardHeight = pauseHeight/2;
  //
  loopX = width * 8/10;
  loopY = pauseY1;
  loopWidth = pauseHeight/2;
  loopHeight = pauseHeight/2;
  //
  muteX = width * 2/10;
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
