float mySize = 20.0;
float x = 100.0;
float y = 100.0;
float theta = 70.0;
float far = 0;
float moonmySize = 20.0;
float moonx = 100.0;
float moony = 100.0;
float moontheta = 70.0;
float moonfar = 0;
float meX =0;
float meY =0;
float far2 = 0;
float moonmySize2 = 10.0;
float moonx2 = 100.0;
float moony2 = 100.0;
float moontheta2 = 70.0;
float moonfar2 = 0;




void setup() {
  size(800, 600);
  far = dist(200, 200, width/2, height/2);
  moonfar = dist(205, 205, x + width/2, y + height/2);
  moonfar2 = dist(210, 215, meX + moonx, meY + moony);
}
void draw() {
  background(255);
  ellipse(width/2,height/2,75,75);
  drawPlanet();
  drawMoon();
  drawMoon2();
}

void mouseReleased() {
}

void drawPlanet() {
  smooth();
  fill(255);
  x = far * cos(theta);
  y = far * sin(theta);
  ellipse(x + width/2, y + height/2, mySize, mySize);
  theta += 0.02;
}

void drawMoon(){
  fill(0);
  meX =  x + width/2;
  meY = y + height/2;
  moonx = moonfar * cos(moontheta);
  moonx = moonx/7;
  moony = moonfar * sin(moontheta);
  moony = moony/7;
  
  
  ellipse( meX + moonx ,meY + moony , moonmySize, moonmySize);
  moontheta += .04;
}
void drawMoon2(){
  moonx = moonfar2 * cos(moontheta2);
  moonx2 = moonx2/10;
  moony2 = moonfar2 * sin(moontheta2);
  moony2 = moony2/10;
  
  ellipse( moonx2 + moonx +meX ,moony2 + moony + meY , moonmySize2, moonmySize2);
  moontheta2 += .5;
}
