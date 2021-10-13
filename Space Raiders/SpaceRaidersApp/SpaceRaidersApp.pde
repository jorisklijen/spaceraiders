int vensterBreete = 1500;
int vensterHoogte = 1000;

void settings() {
  size(vensterBreete, vensterHoogte);
}

void setup() {
  laadAfbeeldingen();
  laadFond();
}

void draw() {
  laadScene();
}

void keyPressed() {
}
