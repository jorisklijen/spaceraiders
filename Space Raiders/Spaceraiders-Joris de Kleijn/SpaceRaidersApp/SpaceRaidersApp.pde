//****************************************************************************
//||  Deze aplecatie is ondwikkelt met behulp van het                       ||
//||  functioneel ontwerp Space Raiders van: M.C. van der Maas (15-9-2021)  ||
//||                                                                        ||
//||  Aplecatie voledig geschreven door:  Joris de Kleijn                   || 
//||  Alle gebruike sprites gemaakt door: Joris de Kleijn                   ||
//||  De gebruikte fonts zijn gemaakt door:                                 ||
//||  bloedFont.otf - Tyrac Wannabeien                                      ||
//||  menuFont.otf - Eddy Goodboy                                           ||
//||  space.otf - Grandoplex Productions                                    ||
//||                                                                        || 
//||                                                                        ||
//||  06-10-2021 tot 22-10-2021                                             ||
//****************************************************************************

int vensterBreete = 1500;
int vensterHoogte = 1000;
int fps = 144;
String tietel = "Space Raiders, Escape The Stasion";

void settings() {
  size(vensterBreete, vensterHoogte);
}

void setup() {
  surface.setTitle(tietel);
  laadAfbeeldingen();
  laadFond();
  frameRate(fps);
}

void draw() {
  laadScene();
}
