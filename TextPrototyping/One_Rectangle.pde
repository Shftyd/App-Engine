// Text is always put in one retangle
float rectX,rectY,rectWidth,rectHeight;
//
void rectSetup() {
  rectX= width * 8/20;
  rectY = height * 5/10;
  rectWidth = width * 3/20;
  rectHeight = height * 2/10;
}// End rectSetup
//
void rectDraw() {
  rect(rectX,rectY,rectWidth,rectHeight);
}// End rectDraw
//
void rectKeyPressed() {
}// End rectKeyPressed
//
void rectMousePressed() {
}// End rectMousePressed
//
//End One Rectangle
