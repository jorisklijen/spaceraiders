int muntWaarde = 10;
int diamantWaarde = 50;
int badRaiderDeeler = 2;

void tekenScore(int score, int x, int y, int kleur, PFont font, int groote) {
  fill(kleur);
  textFont(font);
  textSize(groote/2.1);
  textAlign(LEFT, TOP);
  text("Score " + score, x, y );
}

void telScore(int[][][] level, int huidigLevel, int spelerX, int spelerY, int munt, int diamant, int score, int leeg, int badRaider) {
  if (level[huidigLevel][spelerY][spelerX] == munt) {
    score = score + muntWaarde;
    verwijderObject(level, huidigLevel, spelerX, spelerY, munt, diamant, badRaider, leeg);
  } else if (level[huidigLevel][spelerY][spelerX] == diamant) {
    score = score + diamantWaarde;
    verwijderObject(level, huidigLevel, spelerX, spelerY, munt, diamant, badRaider, leeg);
  } else if (level[huidigLevel][spelerY][spelerX] == badRaider) {
    verwijderObject(level, huidigLevel, spelerX, spelerY, munt, diamant, badRaider, leeg);
    score = score / badRaiderDeeler;
  }
  setScore(score);
}


void verwijderObject(int[][][] level, int huidigLevel, int spelerX, int spelerY, int munt, int diamant, int badRaider, int leeg) {
  int[][][] temp = level;
  if (level[huidigLevel][spelerY][spelerX] == munt || level[huidigLevel][spelerY][spelerX] == diamant || level[huidigLevel][spelerY][spelerX] == badRaider) {
    temp[huidigLevel][spelerY][spelerX] = leeg;
    setScenes(temp);
  }
}
