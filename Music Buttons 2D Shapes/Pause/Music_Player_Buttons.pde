//Global Variables
float pauseX1, pauseY2, pauseWidth, pauseHeight, pauseX2, pauseY1;
float pauseScaleWidth, pauseScaleHeight, pauseStartDrawY;
float stopX, stopY, stopWidth, stopHeight;
float reverseX, reverseY, reverseWidth, reverseHeight;
float forwardX, forwardY, forwardWidth, forwardHeight;
float loopX, loopY, loopWidth, loopHeight;
float muteX, muteY, muteWidth, muteHeight;
color black=#000000, green=#00FF00, red=#FF0000, blue=#0000FF, purple=#FF00FF, white=#FFFFFF, resetcolorNightMode=#FFFF4B;//Night Mode Friendly
color resetcolorDayMode=#FFFFFF;//Not Night Mode Friendly
//
void drawMusicButtons() {
  drawStopButton();
  drawPauseButton();
  drawReverseSkipButton();
  drawForwardSkipButton();
  drawLoopButton();
  muteButton();
}//End drawMusicButtons
//
void drawPauseButton() {
  fill(white);
rect(pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect(pauseX2, pauseY2, pauseWidth, pauseHeight);
  fill(resetcolorDayMode);
}//End drawPauseButton
//
void drawStopButton() {
  fill(black);//Change this to ternary operator
  rect(stopX, stopY, stopWidth, stopHeight); //square
  fill(resetcolorDayMode);
}//End drawStopButton
//
void drawReverseSkipButton() {
  fill(blue);
  rect(reverseX, reverseY, reverseWidth, reverseHeight);
  fill(resetcolorDayMode);
}

void drawForwardSkipButton() {
  fill(green);
  rect(forwardX, forwardY, forwardWidth, forwardHeight);
  fill(resetcolorDayMode);
}

void drawLoopButton() {
  fill(purple);
  rect(loopX, loopY, loopWidth, loopHeight);
  fill(resetcolorDayMode);
}

void muteButton() {
  fill(red);
  rect(muteX, muteY, muteWidth, muteHeight);
  fill(resetcolorDayMode);
}
//End Music Player Buttons
