final int BREETE_SCHRERM = 800;
final int HOOGTE_SCHRERM = 700;
int fps = 60;

void settings() {
  size(BREETE_SCHRERM, HOOGTE_SCHRERM);
}

void setup() {
  laadAfbeeldingen();
  laadFont();
  frameRate(fps);
}

void draw() {
  loadScene();
  tekenScore(getScore(), 5, textSize, textKleur, getBitFont(), textSize);
}

void mousePressed() {
}
