int spelerSnelhijd = 3; //<>//
int xPosSpeler1 = 13;
int yPosSpeler1 = 4;
int xPosSpeler2 = 0;
int yPosSpeler2 = 0;
boolean speler1Levend = true;
boolean speler2Levend = true;

int getXPosSpeler1() {
  return xPosSpeler1;
}
int getYPosSpeler1() {
  return yPosSpeler1;
}
int getXPosSpeler2() {
  return xPosSpeler2;
}
int getYPosSpeler2() {
  return yPosSpeler2;
}

void tekenSpeler(PImage speler, int x, int y, int groote) {
  image(speler, x, y, groote, groote);
}
