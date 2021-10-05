PImage levendR;
PImage levendL;
PImage dood;
PImage logo;
PImage background;

PFont bitFont;

void laadFont() {
  bitFont = createFont("bitFont.otf", 8);
}

void laadAfbeeldingen() {
  levendR   = loadImage("bugR.png"); 
  levendL   = loadImage("bugL.png");
  dood     = loadImage("dood.png"); 
  logo     = loadImage("logo.png"); 
  background = loadImage("bg.png");
}
