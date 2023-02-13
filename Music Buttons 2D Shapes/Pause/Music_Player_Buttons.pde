//Global Variables
float pauseX1, pauseY2, pauseWidth, pauseHeight, pauseX2, pauseY1;
float pauseScaleWidth, pauseScaleHeight, pauseStartDrawY;
float stopX, stopY, stopWidth, stopHeight;
color black=#000000, resetcolorNightMode=#FFFF4B;//Night Mode Friendly
color resetcolorDayMode=#FFFFFF;//Not Night Mode Friendly
//
void drawMusicButtons() {
  drawStopButton();
  drawPauseButton();
}//End drawMusicButtons
//
void drawPauseButton() {
rect(pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect(pauseX2, pauseY2, pauseWidth, pauseHeight);
}//End drawPauseButton
//
void drawStopButton() {
  fill(black);//Change this to ternary operator
  rect(stopX, stopY, stopWidth, stopHeight); //square
  fill(resetcolorDayMode);
}//End drawStopButton
//
//End Music Player Buttons
