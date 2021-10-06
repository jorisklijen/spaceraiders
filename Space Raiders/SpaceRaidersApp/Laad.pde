PImage speler1;
PImage speler2;

PImage badRaider;
PImage monster;
PImage diamant;
PImage munt;

PImage vloer;
PImage muur0;
PImage muur1;
PImage muur2;
PImage muur3;
PImage muur4;
PImage muur5;
PImage muur6;
PImage muur7;
PImage muur8;
PImage muur9;
PImage muur10;
PImage muur11;
PImage muur12;

final int BAD_RAIDER = -1 ;
final int DIAMANT = -2;

final int LEEG = 0;
final int VLOER = 0;
final int MUUR0 = 1;
final int MUUR1 = 2;
final int MUUR2 = 3;
final int MUUR3 = 4;
final int MUUR4 = 5;
final int MUUR5 = 6;
final int MUUR6 = 7;
final int MUUR7 = 8;
final int MUUR8 = 9;
final int MUUR9 = 10;
final int MUUR10 = 11;
final int MUUR11 = 12;
final int MUUR12 = 13;


int[][]level = {
  {LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG  }, 
  {LEEG, MUUR11, MUUR1, MUUR1, MUUR1, MUUR1, MUUR1, MUUR1, MUUR1, MUUR12, LEEG, LEEG, LEEG, LEEG  }, 
  {LEEG, MUUR4, LEEG , LEEG , LEEG , LEEG , LEEG , LEEG , LEEG , MUUR8, LEEG, LEEG, LEEG, LEEG  }, 
  {LEEG, MUUR4, LEEG , LEEG , LEEG , LEEG , LEEG , LEEG , LEEG , MUUR0, LEEG, LEEG, LEEG, LEEG  }, 
  {LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG  }, 
  {LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG  }, 
  {LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG  }, 
  {LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG  }, 
  {LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG  }, 
  {LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG  }, 
  {LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG  }, 
  {LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG  }, 
  {LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG  }, 
  {LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG, LEEG  }, 
};

void laadAfbeeldingen() {
  vloer = loadImage("vloer.png");
  muur0 = loadImage("muur0.png");
  muur1 = loadImage("muur1.png");
  muur2 = loadImage("muur2.png");
  muur3 = loadImage("muur3.png");
  muur4 = loadImage("muur4.png");
  muur5 = loadImage("muur5.png");
  muur6 = loadImage("muur6.png");
  muur7 = loadImage("muur7.png");
  muur8 = loadImage("muur8.png");
  muur9 = loadImage("muur9.png");
  muur10 = loadImage("muur10.png");
  muur11 = loadImage("muur11.png");
  muur12 = loadImage("muur12.png");
}

void tekenLevel(int groote) {
  //background(LICHTBLOUW);
  for (int colom = 0; colom < level.length; colom++) {
    for (int rij = 0; rij < level[colom].length; rij++) {
      switch(level[colom][rij]) {
      case 0: 
        tekenImg(groote * rij, groote * colom, groote, vloer);
        break;
      case 1: 
        tekenImg(groote * rij, groote * colom, groote, muur0);
        break;
      case 2: 
        tekenImg(groote * rij, groote * colom, groote, muur1 );
        break;
      case 3: 
        tekenImg(groote * rij, groote * colom, groote, muur2);
        break;
      case 4: 
        tekenImg(groote * rij, groote * colom, groote, muur3);
        break;
      case 5: 
        tekenImg(groote * rij, groote * colom, groote, muur4);
        break;
      case 6: 
        tekenImg(groote * rij, groote * colom, groote, muur5);
        break;
      case 7: 
        tekenImg(groote * rij, groote * colom, groote, muur6);
        break;
      case 8: 
        tekenImg(groote * rij, groote * colom, groote, muur7);
        break;
      case 9: 
        tekenImg(groote * rij, groote * colom, groote, muur8);
        break;
      case 10: 
        tekenImg(groote * rij, groote * colom, groote, muur9);
        break;
      case 11: 
        tekenImg(groote * rij, groote * colom, groote, muur10);
        break;
     case 12: 
        tekenImg(groote * rij, groote * colom, groote, muur11);
        break;
     case 13: 
        tekenImg(groote * rij, groote * colom, groote, muur12);
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
