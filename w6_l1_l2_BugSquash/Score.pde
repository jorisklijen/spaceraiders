boolean scoreBool;
// --locaties vijhand----------------------------------
float getXposEnnemy() {
  return xPos;
}
float getYposEnnemy() {
  return yPos;
}
// --Score---------------------------------------------
int getScore() {
  return score;
}
void setScore(int punten) {
  score = punten;
}

boolean getIsAlive() {
  return isAlive();
}

void telScore() {
  int punten = 0;
  if (!getIsAlive() && scoreBool) {
    scoreBool = false;
    punten++;
    setScore(getScore() + punten);
  }
}



void tekenScore(int score, int x, int y, int kleur, PFont font, int groote) {
  fill(kleur);
  textFont(font);
  textSize(groote);
  textAlign(LEFT, BOTTOM);
  text("Score: " + score, x, y );
}
