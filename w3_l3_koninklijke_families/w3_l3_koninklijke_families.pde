PImage imgM;
PImage imgV;

int meisjes = 0;
int jongens = 0;

void setup() {
  size(400, 900);
  imgM = loadImage("m.png");
  imgV = loadImage("v.png");
  background(0);
  tekenGeneraties(5, 0, 0, 50, 90);
  tekenUitslag(150);
  printUitslag();
}

void tekenGeneraties(int aantal, int x, int y, int breete, int hoogte){
  int hulp = 0;
  for(int i = 0; i < aantal; i++){
    tekenFamillie(x, y + hulp, breete, hoogte);
    hulp = hulp + hoogte;
  }
}

void tekenFamillie(int x, int y, int breete, int hoogte) {
  int hulp = 0;
  boolean activeeren = true;
  while (activeeren) {
    boolean resultaat = kansOpKind();
    if (resultaat) {
      //tekend mijsjes zolang kansopkind true is
      tekenKind(x + hulp, y, breete, hoogte, resultaat);
      hulp = hulp + breete;
      meisjes++; //<>//
    }
    else if(!resultaat) {
      // tekend 1 jongen na dat alle mijsjes geweest zijn als die er waaren
      tekenKind(x + hulp, y, breete, hoogte, resultaat);
      activeeren = false;
      jongens++; //<>//
    }
  }
}

void tekenKind(int x, int y, int b, int h, boolean geslacht) {
  if (geslacht) {
    image(imgV, x, y, b, h);
  } else if (!geslacht) {
    image(imgM, x, y, b, h);
  }
}

boolean kansOpKind() {
  int r = int(random(2));
  if (r == 0) {
    //println("meisje" + r);//test
    return true;
  } else {
    //println("jongen" + r);//rest
    return false;
  }
}

void tekenUitslag(int spacing){
  fill(#ff0000);
  text("Aantal jongens = " + jongens, width - spacing, 10);
  text("Aantal meisjes = " + meisjes, width - spacing, 20);
}

void printUitslag(){
  println("Aantal jongens = " + jongens);
  println("Aantal meisjes = " + meisjes);
}
