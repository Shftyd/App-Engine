//Global Variables
float pauseX1, pauseY2, pauseWidth, pauseHeight, pauseX2, pauseY1;
float pauseScaleWidth, pauseScaleHeight, pauseStartDrawY;
float stopX, stopY, stopWidth, stopHeight;
float reverseX1, reverseY1, reverseX2, reverseY2, reverseX3, reverseY3;
float reverseX4, reverseY4, reverseX5, reverseY5, reverseX6, reverseY6;
float forwardX1, forwardY1, forwardX2, forwardY2, forwardX3, forwardY3;
float forwardX4, forwardY4, forwardX5, forwardY5, forwardX6, forwardY6;
float loopX1, loopY1, loopWidth1, loopHeight1;
float loopX2, loopY2, loopWidth2, loopHeight2;
float muteX, muteY, muteWidth, muteHeight;
float x1, y1, x2, y2, x3, y3;
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
  drawPlayButton();
}//End drawMusicButtons
//
void drawPauseButton() {
  fill(white);
rect(pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect(pauseX2, pauseY2, pauseWidth, pauseHeight);
  fill(resetcolorDayMode);
}//End drawPauseButton
//
void drawPlayButton() {
  triangle(x1, y1, x2, y2, x3, y3);
}
//
void drawStopButton() {
  fill(black);//Change this to ternary operator
  rect(stopX, stopY, stopWidth, stopHeight); //square
  fill(resetcolorDayMode);
}//End drawStopButton
//
void drawReverseSkipButton() {
  fill(blue);
  triangle(reverseX1, reverseY1, reverseX2, reverseY2, reverseX3, reverseY3);
  triangle(reverseX4, reverseY4, reverseX5, reverseY5, reverseX6, reverseY6);
  fill(resetcolorDayMode);
}

void drawForwardSkipButton() {
  fill(green);
  triangle( forwardX1, forwardY1, forwardX2, forwardY2, forwardX3, forwardY3);
 triangle(forwardX4, forwardY4, forwardX5, forwardY5, forwardX6, forwardY6);
  fill(resetcolorDayMode);
}

void drawLoopButton() {
  fill(purple);
  rect(loopX1, loopY1, loopWidth1, loopHeight1);
  rect(loopX2, loopY2, loopWidth2, loopHeight2);
  fill(resetcolorDayMode);
}

void muteButton() {
  fill(red);
  rect(muteX, muteY, muteWidth, muteHeight);
  fill(resetcolorDayMode);
}
//End Music Player Buttons
