final int BREETE_SCHRERM = 800;
final int HOOGTE_SCHRERM = 700;
int fps = 60;

void settings() {
  size(BREETE_SCHRERM, HOOGTE_SCHRERM);
}

void setup() {
  laadAfbeeldingen();
  frameRate(fps);
}

void draw() {
  spawnEnnemy();
}

void mousePressed() {
}
