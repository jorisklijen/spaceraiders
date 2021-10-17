int spelerSnelhijd = 3; //<>//
int xPosSpeler = 13;
int yPosSpeler = 4;
boolean spelerLevend = true;

int getXPosSpeler() {
  return xPosSpeler;
}
int getYPosSpeler() {
  return yPosSpeler;
}

void beweegSpeler(int[][] level) {
  if (keyCode == UP && level[yPosSpeler - 1][xPosSpeler] > 0) {
    yPosSpeler --;
  } else if (keyCode == DOWN && level[yPosSpeler + 1][xPosSpeler] > 0) {
    yPosSpeler ++;
  } else if (keyCode == LEFT && level[yPosSpeler][xPosSpeler - 1] > 0) {
    xPosSpeler --;
  } else if (keyCode == RIGHT && level[yPosSpeler][xPosSpeler + 1] > 0) {
    xPosSpeler ++;
  }
}

void tekenSpeler(PImage speler, int x, int y, int groote) {
  image(speler, x, y, groote, groote);
}
