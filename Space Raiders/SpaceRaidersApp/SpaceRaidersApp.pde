int vensterBreete = 1500;
int vensterHoogte = 1000;
int fps = 60;

void settings() {
  size(vensterBreete, vensterHoogte);
}

void setup() {
  laadAfbeeldingen();
  laadFond();
  frameRate(fps);
}

void draw() {
  laadScene();
}
