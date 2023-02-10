//Global Variables
float pauseX1, pauseY2, pauseWidth, pauseHeight, pauseX2, pauseY1;
float pauseScaleWidth, pauseScaleHeight, pauseStartDrawY;
//
void setup() {
  //Landscape (protrait, square)
  //Populatoin, visual data
  fullScreen(); //displayWidth, displayHeight 
  float musicButtonDrawX = width * 5/10;
  float musicButtonDrawY = height * 3/5;
  pauseScaleWidth = 1.0/50.0;//used to change x-axis
  pauseScaleHeight = 2.0/10.0; //used to change y-axis
  println(pauseScaleWidth);
  pauseWidth = width * pauseScaleWidth;
  pauseX1 = musicButtonDrawX - pauseWidth - pauseWidth*1/2;
  pauseY1 = musicButtonDrawY;
  pauseX2 = musicButtonDrawX + pauseWidth*1/2;
  pauseY2 = pauseY1;
  pauseHeight =height * pauseScaleHeight;
}//End setup
//
void draw() {
  rect(pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect(pauseX2, pauseY2, pauseWidth, pauseHeight);

}//End draw
//
void keyPressed () {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program (Driver)
