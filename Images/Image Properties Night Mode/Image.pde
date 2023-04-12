/* Background Image Example
 No Aspect Ratio
 Filling the Rectangle
 */
//Global Variables
int appWidth, appHeight;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
Boolean nightMode=true;
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
pic = loadImage("../../Images Used/Landscape & Square images/tree.jpg");
//
//Rectangle layout and Image drawing to CANVAS
rect( imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
//
if ( nightMode==false ) tint(255, 128); //Gray Scale, day use: used 1/2 tint for white (128/255=1/2)
if ( nightMode==true ) tint(64, 64, 40); //RGB: Night Mode
image( pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
//End Main Program
