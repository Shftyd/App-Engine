//Global Variables
float pauseX1, pauseY2, pauseWidth, pauseHeight, pauseX2, pauseY1;
float pauseScaleWidth, pauseScaleHeight, pauseStartDrawY;
float stopX, stopY, stopWidth, stopHeight;
//
void drawMusicButtons() {
  drawStopButton();
}//End drawMusicButtons
//
void drawPauseButton() {
rect(pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect(pauseX2, pauseY2, pauseWidth, pauseHeight);
}//End drawPauseButton
//
void drawStopButton() {
  rect(stopX, stopY, stopWidth, stopHeight); //square
}//End drawStopButton
//
//End Music Player Buttons
