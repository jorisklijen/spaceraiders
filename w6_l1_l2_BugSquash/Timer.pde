int timeInSec = 0;
int textSize  = 45;
int textKleur = #CBFFEA;

boolean timesUp = false;

PFont getBitFont() {
  return bitFont;
}

int berekenTijd() {
  timeInSec = millis() / 1000;
  if (timeInSec == 30) {
    timesUp = true;
    timeInSec = 0;
  }
  return timeInSec;
}

void drawCompleteTimer() {
  tekenTimer(berekenTijd(), 5, textSize, textKleur, getBitFont(), textSize);
}

void tekenTimer(int tijd, int x, int y, int kleur, PFont font, int groote) {
  fill(kleur);
  textFont(font);
  textSize(groote);
  textAlign(LEFT, BOTTOM);
  text("Time: " + tijd, x, y );
}
