/* Background Image Example
 No Aspect Ratio
 Filling the Rectangle
 */
//Global Variables
int appWidth, appHeight;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
Boolean nightMode=false;
float whiteSpace=0.0, picX_Adjusted=0.0, picY_Adjusted=0.0;
float picWidthAdjusted=0.0, picHeightAdjusted=0.0; //IF requires previous value, not NULL
Boolean imageCenter=true, imageRightBottom=false; //Vars Image Justification

//size(800, 600);
fullScreen();
appWidth = width ;
appHeight = height ;
//
//Population

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
  largerDimension = picWidth;
  smallerDimension = picHeight;
  imageHeightRatio = float (smallerDimension) / float (largerDimension); //Ratio is <=1,, fixed by CASTING
  picWidthAdjusted = imageBackgroundWidth; //Compressed into rect()
  picHeightAdjusted = picWidthAdjusted * imageHeightRatio; //Calculated Variable from compressed variable
  //if imgage fits in rect: format or justify image
  whiteSpace = imageBackgroundHeight - picHeightAdjusted;
  //if image left justified, then no change to Y-Var
  picX_Adjusted = imageBackgroundX;
  picY_Adjusted = imageBackgroundY;
  if ( imageCenter==true ) picY_Adjusted = imageBackgroundY + whiteSpace*1/2;
  if ( imageRightBottom==true) picY_Adjusted = imageBackgroundY + whiteSpace;
  //
  if ( picHeightAdjusted > imageBackgroundHeight ) { //ERROR Catch: adusted height is bigger then rect()
    picHeightAdjusted = imageBackgroundHeight;
    picWidthAdjusted = picWidthAdjusted * imageHeightRatio;
    //if imgage fits in rect: format or justify image
    whiteSpace = imageBackgroundWidth - picWidthAdjusted;
    //if image left justified, then no change to X-Var
    picX_Adjusted = imageBackgroundX;
    picY_Adjusted = imageBackgroundY;
    if ( imageCenter==true ) picX_Adjusted = imageBackgroundX + whiteSpace*1/2;
    if ( imageRightBottom==true) picX_Adjusted = imageBackgroundX + whiteSpace;
  }
} else { //FALSE if Portrait
  //Students to finish
  /* largerDimension = picHeight ;
   smallerDimension = picWidth ;
   imageWidthRatio = smallerDimension / largerDimension ; //Ratio is <=1
   picHeightAdjusted = imageBackgroundHeight ;//Compressed into rect()
   picWidthAjusted = imageBackgroundHeight * imagewidthRatio ;
   */
}
//
//Rectangle layout and Image drawing to CANVAS
rect( imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
//
if ( nightMode==false ) tint(255, 128); //Gray Scale, day use: used 1/2 tint for white (128/255=1/2)
if ( nightMode==true ) tint(64, 64, 40); //RGB: Night Mode
//image( pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight );
//
//Image doesnt print to CANVAS if ...
println( picWidthAdjusted, picHeightAdjusted ); //View Human Error on variables, zero values
image( pic, picX_Adjusted, picY_Adjusted, picWidthAdjusted, picHeightAdjusted );
//End Main Program
