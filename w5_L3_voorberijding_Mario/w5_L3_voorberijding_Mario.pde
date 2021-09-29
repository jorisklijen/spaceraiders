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


final int LEEG_ = 0;
//waarde voor in arry puur voor leesbaarheid niet persee nodig 
final int GROND = 1;
final int BRICK = 2;
final int MUNT_ = 3;
final int DOOS_ = 4;
final int BLOEM = 5;
final int PA_ST = 6;
final int STER_ = 7;
final int L_B_P = 8;
final int R_B_P = 9;
final int LPIJP = 10;
final int RPIJP = 11;
final int BLOCK = 12;
final int WOLK1 = 13;
final int WOLK2 = 14;
final int WOLK3 = 15;
final int WOLK4 = 16;
final int WOLK5 = 17;
final int WOLK6 = 18;

int[][]level = {
  {LEEG_}, 
  {LEEG_}, 
  {LEEG_}, 
  {LEEG_}, 
  {LEEG_}, 
  {LEEG_}, 
  {LEEG_}, 
  {LEEG_}, 
  {LEEG_}, 
  {LEEG_}, 
  {LEEG_}, 
  {LEEG_}, 
  {LEEG_}, 
  {LEEG_}, 
  {LEEG_}, 
  {LEEG_}, 
  {LEEG_}, 
  {LEEG_}, 
  {GROND, GROND, GROND}, 
  {GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND, GROND}, 
}; 

void setup() {
  size(800, 400);

  laadAfbeeldingen();
  tekenLevel(scale);
}

void laadAfbeeldingen() {
  imgTest  = loadImage("test.png");
  imgGrond = loadImage("test.png");
  imgBrick = loadImage(".png");
  imgMunt  = loadImage(".png");
  imgDoos  = loadImage(".png");
  imgBloem = loadImage(".png");
}

void tekenLevel(int groote) {
  background(LICHTBLOUW);
  for (int colom = 0; colom < level.length; colom++) {
    for (int rij = 0; rij < level[colom].length; rij++) {
      switch(level[colom][rij]) {
      case 0: //leeg
        break;
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
        tekenImg(groote * rij, groote * colom, groote, imgPaddenstoel);
        break;
      case 7: //ster
        tekenImg(groote * rij, groote * colom, groote, imgSter);
        break;
      case 8: //linksBovenPijp
        tekenImg(groote * rij, groote * colom, groote, imgLinksBovenPijp);
        break;
      case 9: //rechtsBovenPijp
        tekenImg(groote * rij, groote * colom, groote, imgRechtsBovenPijp);
        break;
      case 10: //linksPijp
        tekenImg(groote * rij, groote * colom, groote, imgLinksPijp);
        break;
      case 11: //rechtsPijp
        tekenImg(groote * rij, groote * colom, groote, imgRechtsPijp);
        break;
      case 12: //block
        tekenImg(groote * rij, groote * colom, groote, imgBlock);
        break;
      default :
        println("er word " + level[colom][rij] + " gegeven en deze heeft geen afbeelding toegewezen gekregen");
        println("***********************************************************************");
        break;
      }
    }
  }
}

void tekenImg(int x, int y, int groote, PImage afbeelding) {
  image(afbeelding, x, y, groote, groote);
  //println("Zonnet " + afbeelding + "afgedrukt");
  //println("***********************");
}
