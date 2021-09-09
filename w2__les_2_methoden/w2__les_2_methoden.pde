/*
  Fout in de code
 
 DE void change(); kent de variable b niet en geeft dus een foutmelding.
 */
PImage img;
float yVer;

void setup() {
  size(500, 500);
  background(0);
  frameRate(60);
  surface.setResizable(true);
  
  img = loadImage("Raket.png");
}

void draw() {
  float pos = posBepaalRaket(0.09);
  tekenRaket(width / 2, pos, 200, 200);
}

void tekenRaket(int x, float y, int b, int h) {
  x = x - ( b / 2 );
  
  background(0);
  image(img, x, y, b, h);
}

float posBepaalRaket(float vertraaging) {
  float targetY = mouseY;
  float dy = targetY - yVer;
  yVer += dy * vertraaging;

  return yVer;
}
