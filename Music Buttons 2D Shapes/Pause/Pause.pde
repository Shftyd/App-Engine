//Global Variables
float pauseX1, pauseY2, pauseWidth, pauseHeight, pauseX2, pauseY1;
//
void setup() {
  //Landscape (protrait, square)
  //Populatoin, visual data
  fullScreen(); //displayWidth, displayHeight
  float centerX = width * 1/2;
  pauseWidth = width;
  pauseX1 = centerX - pauseWidth*1/2;
  pauseY2 = height;
  pauseHeight = height;
  pauseX2 = centerX + pauseWidth*1/2;
  pauseY1 = height;
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
