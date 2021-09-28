//mario level
final int LICHTBLOUW = #6185f8;
int scale = 20;

PImage imgTest;

PImage imgGrond;
PImage imgBrick;
PImage imgMunt;
PImage imgDoos;
PImage imgBloem;
PImage imgPaddenstoel;
PImage imgSter;

PImage imgLinksBovenPijp;
PImage imgRechtsBovenPijp;
PImage imgLinksPijp;
PImage imgRechtsPijp;

PImage imgBlock;

PImage imgWolk1;
PImage imgWolk2;
PImage imgWolk3;
PImage imgWolk4;
PImage imgWolk5;
PImage imgWolk6;


int leeg_ = 0;
//waarde voor in arry puur voor leesbaarheid niet persee nodig 
int grond = 1;
int brick = 2;
int munt_ = 3;
int doos_ = 4;
int bloem = 5;
int paddenstoel = 6;
int ster = 7;
int linksBovenPijp = 8;
int rechtsBovenPijp = 9;
int linksPijp = 10;
int rechtsPijp = 11;
int block = 12;
int wolk1 = 13;
int wolk2 = 14;
int wolk3 = 15;
int wolk4 = 16;
int wolk5 = 17;
int wolk6 = 18;

int[][]level = {
  {leeg_, leeg_, leeg_}, 
  {leeg_, leeg_, leeg_}, 
  {leeg_, leeg_, leeg_}, 
  {leeg_, leeg_, leeg_}, 
  {leeg_, leeg_, leeg_}, 
  {leeg_, leeg_, leeg_}, 
  {leeg_, leeg_, leeg_}, 
  {leeg_, leeg_, leeg_}, 
  {leeg_, leeg_, leeg_}, 
  {leeg_, leeg_, leeg_}, 
  {leeg_, leeg_, leeg_}, 
  {leeg_, leeg_, leeg_}, 
  {leeg_, leeg_, leeg_}, 
  {leeg_, leeg_, leeg_}, 
  {leeg_, leeg_, leeg_}, 
  {leeg_, leeg_, leeg_}, 
  {leeg_, leeg_, leeg_}, 
  {leeg_, leeg_, leeg_}, 
  {grond, grond, grond}, 
  {grond, grond, grond}, 
}; 

void setup() {
  size(800, 400);

  laadAfbeeldingen();
  tekenLevel(scale);
}

void laadAfbeeldingen() {
  imgTest  = loadImage("test.png");
  imgGrond = loadImage(".png");
  imgBrick = loadImage(".png");
  imgMunt  = loadImage(".png");
  imgDoos  = loadImage(".png");
  imgBloem = loadImage(".png");
}

void tekenLevel(int groote) {
  int object;
  background(LICHTBLOUW);
  for (int colom = 0; colom < level.length; colom++) {
    for (int rij = 0; rij < level[colom].length; rij++) {
      object = level[colom][rij];
      switch(object) {
      case 1: //grond
        tekenImg(groote * rij, groote * colom, groote, imgGrond);
        break;
      case 2: //brick
        tekenImg(groote * rij, groote * colom, groote, imgBrick);
        break;
      case 3: //munt
        tekenImg(groote * rij, groote * colom, groote, imgMunt);
        break;
      case 4: //doos
        tekenImg(groote * rij, groote * colom, groote, imgDoos);
        break;
      case 5: //bloem
        tekenImg(groote * rij, groote * colom, groote, imgBloem);
        break;
      case 6: //paddenstoel
        tekenImg(groote * rij, groote * colom, groote, imgBloem);
        break;
      case 7: //ster
        tekenImg(groote * rij, groote * colom, groote, imgBloem);
        break;
      case 8: //linksBovenPijp
        tekenImg(groote * rij, groote * colom, groote, imgBloem);
        break;
      case 9: //rechtsBovenPijp
        tekenImg(groote * rij, groote * colom, groote, imgBloem);
        break;
      case 10: //linksPijp
        tekenImg(groote * rij, groote * colom, groote, imgBloem);
        break;
      case 11: //rechtsPijp
        tekenImg(groote * rij, groote * colom, groote, imgBloem);
        break;
      case 12: //block
        tekenImg(groote * rij, groote * colom, groote, imgBloem);
        break;
      }
    }
  }
}

void tekenImg(int x, int y, int groote, PImage afbeelding) {
  image(afbeelding, x, y, groote, groote);
  println("Zonnet " + afbeelding + "afgedrukt");
  println("***********************");
}
