/* Background Image Example
 No Aspect Ratio
 Filling the Rectangle
 */
//Global Variables
int appWidth, appHeight;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
Boolean nightMode=true;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0; //IF requires previous value
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
//
//Pathway & Files
String upFolder = "..";
String openFolder = "/";
String folder1 = "Images Used";
String folder2 = "Landscape & Square images";
String fileName = "tree.jpg";
pic = loadImage( upFolder+openFolder+upFolder+openFolder+folder1+openFolder+folder2+openFolder+fileName );
int picWidth = 285 ;//original Dimensions
int picHeight = 177 ;//original Dimensions
//Larger Dimensions Algorithm, any image, ASPECT RATIO
int smallerDimension, largerDimension;
float imageHeightRatio, imageWidthRatio;
if ( picWidth >= picHeight ) { //TRUE if Landscape or Square
  largerDimension = picWidth ;
  smallerDimension = picHeight ;
  imageHeightRatio = float (smallerDimension) / float (largerDimension); //Ratio is <=1
  picWidthAdjusted = imageBackgroundWidth ;//Compressed into rect()
  picHeightAdjusted = imageBackgroundWidth * imageHeightRatio ;
} else { //FALSE if Portrait
  //Students to finish
   /* largerDimension = picHeight ;
    smallerDimension = picWidth ;
    imageWidthRatio = smallerDimension / largerDimension ; //Ratio is <=1
    picHeightAdjusted = imageBackgroundHeight ;//Compressed into rect()
    picWidthAjusted = imageBackgroundHeight * imagewidthRatio ;
*/  }
  //
  //Rectangle layout and Image drawing to CANVAS
  rect( imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
  //
  if ( nightMode==false ) tint(255, 128); //Gray Scale, day use: used 1/2 tint for white (128/255=1/2)
  if ( nightMode==true ) tint(64, 64, 40); //RGB: Night Mode
  //image( pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
  //
  //Image doesnt print to CANVAS if ...
  println( imageBackgroundX, imageBackgroundY, picWidthAdjusted, picHeightAdjusted );
  image( pic, imageBackgroundX, imageBackgroundY, picWidthAdjusted, picHeightAdjusted );
  //End Main Program
