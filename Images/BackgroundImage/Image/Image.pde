/* Background Image Example
 No Aspect Ratio
 Filling the Rectangle
 */
//Global Variables
int appWidth, appHeight;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
//
fullScreen();
appWidth = width ;
appHeight = height ;
//
//Population
imageBackgroundX = appWidth * 0 ;
imageBackgroundY = appHeight * 0 ;
imageBackgroundWidth = appWidth - 1 ;
imageBackgroundHeight = appHeight - 1 ;
pic = loadImage(../../Images Used/Landscape & Square images/tree.jpg);
//
//Rectangle layout and Image drawing to CANVAS
rect( imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
//
image( pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
//End Main Program
