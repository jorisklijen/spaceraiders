final int KNOP__ = 10;
final int PORTAL = 11;

final int MUNT__ = 12;
final int DIAMAN = 13;
final int B_Raid = 14;

final int Z_TANK = 15;

final int MONSTR = 16;

final int PLAYER = 17;

final int LEEG_0 = 0;
final int LEEG_1 = 1;
final int MUUR__ = -1;
final int MUUR0_ = -2;
final int MUUR1_ = -3;
final int MUUR2_ = -4;
final int MUUR3_ = -5;
final int MUUR4_ = -6;
final int MUUR5_ = -7;
final int MUUR6_ = -8;
final int MUUR7_ = -9;
final int MUUR8_ = -10;
final int MUUR9_ = -11;
final int MUUR10 = -12;
final int MUUR11 = -13;
final int MUUR12 = -14;
final int MUUR13 = -15;
final int MUUR14 = -16;
final int MUUR15 = -17;
final int MUUR16 = -18;
final int MUUR17 = -19;
final int MUUR18 = -20;
final int MUUR19 = -21;
final int MUUR20 = -22;
final int MUUR21 = -23;
final int MUUR22 = -24;
final int MUUR23 = -25;
final int MUUR24 = -26;
final int MUUR25 = -27;
final int MUUR26 = -28;
final int MUUR27 = -29;
final int MUUR28 = -30;
final int MUUR29 = -31;
final int MUUR30 = -32;
final int MUUR31 = -33;
final int MUUR32 = -34;
final int MUUR33 = -35;
final int MUUR34 = -36;
final int MUUR35 = -37;
final int MUUR36 = -38;
final int MUUR37 = -39;
final int MUUR38 = -40;
final int MUUR39 = -41;
final int MUUR40 = -42;
final int MUUR41 = -43;
final int MUUR42 = -44;
final int MUUR43 = -45;
final int MUUR44 = -46;
final int MUUR45 = -47;

int[][]level0 = {
  {LEEG_0, LEEG_0, MUUR17, MUUR0_, MUUR21, MUUR0_, MUUR0_, MUUR21, MUUR0_, MUUR0_, MUUR21, MUUR0_, MUUR0_, MUUR0_, MUUR16}, 
  {LEEG_0, LEEG_0, MUUR2_, MUUR__, MUUR12, MUUR__, MUUR__, MUUR9_, MUUR__, MUUR__, MUUR9_, MUUR__, MUUR__, MUUR__, MUUR1_}, 
  {LEEG_0, LEEG_0, MUUR2_, DIAMAN, MUUR9_, LEEG_1, LEEG_1, MUUR__, MONSTR, LEEG_1, MUUR__, LEEG_1, MUNT__, PLAYER, MUUR1_}, 
  {LEEG_0, LEEG_0, MUUR2_, LEEG_1, MUUR__, LEEG_1, LEEG_1, LEEG_1, LEEG_1, DIAMAN, LEEG_1, LEEG_1, MUUR45, LEEG_1, MUUR1_}, 
  {LEEG_0, LEEG_0, MUUR2_, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, KNOP__, LEEG_1, MUUR__, LEEG_1, MUUR1_}, 
  {LEEG_0, LEEG_0, MUUR2_, LEEG_1, LEEG_1, MUUR45, LEEG_1, LEEG_1, LEEG_1, MUUR5_, MUUR4_, B_Raid, LEEG_1, LEEG_1, MUUR1_}, 
  {LEEG_0, LEEG_0, MUUR18, MUUR8_, Z_TANK, MUUR__, LEEG_1, LEEG_1, MUUR10, MUUR31, MUUR32, MUUR8_, LEEG_1, LEEG_1, MUUR1_}, 
  {LEEG_0, LEEG_0, MUUR2_, MUUR__, LEEG_1, PORTAL, LEEG_1, LEEG_1, MUUR__, MUUR__, MUUR__, MUUR__, LEEG_1, MUUR5_, MUUR15}, 
  {LEEG_0, LEEG_0, MUUR2_, LEEG_1, B_Raid, MUUR5_, MUUR4_, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, MUUR1_, LEEG_0}, 
  {LEEG_0, LEEG_0, MUUR14, MUUR3_, MUUR3_, MUUR15, MUUR14, MUUR3_, MUUR3_, MUUR3_, MUUR3_, MUUR3_, MUUR3_, MUUR15, LEEG_0}, 
};

int[][]level1 = {
  {LEEG_0, LEEG_0, LEEG_0, LEEG_0, MUUR17, MUUR0_, MUUR0_, MUUR0_, MUUR0_, MUUR0_, MUUR16, MUUR17, MUUR0_, MUUR0_, MUUR16}, 
  {LEEG_0, LEEG_0, LEEG_0, MUUR17, MUUR7_, MUUR__, MUUR__, MUUR__, MUUR__, MUUR__, MUUR6_, MUUR7_, MUUR__, MUUR__, MUUR1_}, 
  {LEEG_0, LEEG_0, LEEG_0, MUUR2_, MUUR__, LEEG_1, LEEG_1, PORTAL, LEEG_1, LEEG_1, MUUR__, MUUR__, LEEG_1, LEEG_1, MUUR1_}, 
  {LEEG_0, LEEG_0, MUUR17, MUUR7_, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, PLAYER, LEEG_1, MUUR1_}, 
  {LEEG_0, LEEG_0, MUUR2_, MUUR__, LEEG_1, LEEG_1, LEEG_1, MUUR10, MUUR8_, LEEG_1, MUUR10, MUUR43, LEEG_1, LEEG_1, MUUR1_}, 
  {LEEG_0, LEEG_0, MUUR2_, LEEG_1, LEEG_1, LEEG_1, LEEG_1, MUUR__, MUUR__, LEEG_1, MUUR__, MUUR9_, MUNT__, MUUR5_, MUUR15}, 
  {LEEG_0, LEEG_0, MUUR2_, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, KNOP__, MUUR__, LEEG_1, MUUR1_, LEEG_0}, 
  {LEEG_0, LEEG_0, MUUR2_, LEEG_1, MUUR5_, MUUR4_, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, MUUR1_, LEEG_0}, 
  {LEEG_0, LEEG_0, MUUR2_, LEEG_1, MUUR1_, MUUR2_, LEEG_1, LEEG_1, LEEG_1, LEEG_1, MUUR5_, MUUR3_, MUUR3_, MUUR15, LEEG_0}, 
  {LEEG_0, LEEG_0, MUUR14, MUUR3_, MUUR15, MUUR14, MUUR3_, MUUR3_, MUUR3_, MUUR3_, MUUR15, LEEG_0, LEEG_0, LEEG_0, LEEG_0}, 
};


void tekenLevel(int groote, int[][]scene) {
  for (int colom = 0; colom < scene.length; colom++) {
    for (int rij = 0; rij < scene[colom].length; rij++) {
      if (scene[colom][rij] > 0) {
        tekenImg(groote * rij, groote * colom, groote, vloer);
      } else {
        tekenImg(groote * rij, groote * colom, groote, space);
      }
      switch(scene[colom][rij]) {
      case 10: 
        tekenImg(groote * rij, groote * colom, groote, knop);
        break;
      case 11: 
        tekenImg(groote * rij, groote * colom, groote, portaal);
        break;
      case 12: 
        tekenImg(groote * rij, groote * colom, groote, munt);
        break;
      case 13: 
        tekenImg(groote * rij, groote * colom, groote, diamant);
        break;
      case 14: 
        tekenImg(groote * rij, groote * colom, groote, badRaider);
        break;
      case 15: 
        tekenImg(groote * rij, groote * colom, groote, zuurstofTank);
        break;
      case 16: 
        tekenImg(groote * rij, groote * colom, groote, monster);
        break;
      case 17: 
        tekenImg(groote * rij, groote * colom, groote, speler1);
        break;
      case 1: 
        break;
      case 0: 
        tekenImg(groote * rij, groote * colom, groote, space);
        break;
      case -1: 
        tekenImg(groote * rij, groote * colom, groote, muur);
        break;
      case -2: 
        tekenImg(groote * rij, groote * colom, groote, muur0);
        break;
      case -3: 
        tekenImg(groote * rij, groote * colom, groote, muur1);
        break;
      case -4: 
        tekenImg(groote * rij, groote * colom, groote, muur2);
        break;
      case -5: 
        tekenImg(groote * rij, groote * colom, groote, muur3);
        break;
      case -6: 
        tekenImg(groote * rij, groote * colom, groote, muur4);
        break;
      case -7: 
        tekenImg(groote * rij, groote * colom, groote, muur5);
        break;
      case -8: 
        tekenImg(groote * rij, groote * colom, groote, muur6);
        break;
      case -9: 
        tekenImg(groote * rij, groote * colom, groote, muur7);
        break;
      case -10: 
        tekenImg(groote * rij, groote * colom, groote, muur8);
        break;
      case -11: 
        tekenImg(groote * rij, groote * colom, groote, muur9);
        break;
      case -12: 
        tekenImg(groote * rij, groote * colom, groote, muur10);
        break;
      case -13: 
        tekenImg(groote * rij, groote * colom, groote, muur11);
        break;
      case -14: 
        tekenImg(groote * rij, groote * colom, groote, muur12);
        break;
      case -15: 
        tekenImg(groote * rij, groote * colom, groote, muur13);
        break;
      case -16: 
        tekenImg(groote * rij, groote * colom, groote, muur14);
        break;
      case -17: 
        tekenImg(groote * rij, groote * colom, groote, muur15);
        break;
      case -18: 
        tekenImg(groote * rij, groote * colom, groote, muur16);
        break;
      case -19: 
        tekenImg(groote * rij, groote * colom, groote, muur17);
        break;
      case -20: 
        tekenImg(groote * rij, groote * colom, groote, muur18);
        break;
      case -21: 
        tekenImg(groote * rij, groote * colom, groote, muur19);
        break;
      case -22: 
        tekenImg(groote * rij, groote * colom, groote, muur20);
        break;
      case -23: 
        tekenImg(groote * rij, groote * colom, groote, muur21);
        break;
      case -24: 
        tekenImg(groote * rij, groote * colom, groote, muur22);
        break;
      case -25: 
        tekenImg(groote * rij, groote * colom, groote, muur23);
        break;
      case -26: 
        tekenImg(groote * rij, groote * colom, groote, muur24);
        break;
      case -27: 
        tekenImg(groote * rij, groote * colom, groote, muur25);
        break;
      case -28: 
        tekenImg(groote * rij, groote * colom, groote, muur26);
        break;
      case -29: 
        tekenImg(groote * rij, groote * colom, groote, muur27);
        break;
      case -30: 
        tekenImg(groote * rij, groote * colom, groote, muur28);
        break;
      case -31: 
        tekenImg(groote * rij, groote * colom, groote, muur29);
        break;
      case -32: 
        tekenImg(groote * rij, groote * colom, groote, muur30);
        break;
      case -33: 
        tekenImg(groote * rij, groote * colom, groote, muur31);
        break;
      case -34: 
        tekenImg(groote * rij, groote * colom, groote, muur32);
        break;
      case -35: 
        tekenImg(groote * rij, groote * colom, groote, muur33);
        break;
      case -36: 
        tekenImg(groote * rij, groote * colom, groote, muur34);
        break;
      case -37: 
        tekenImg(groote * rij, groote * colom, groote, muur35);
        break;
      case -38: 
        tekenImg(groote * rij, groote * colom, groote, muur36);
        break;
      case -39: 
        tekenImg(groote * rij, groote * colom, groote, muur37);
        break;      
      case -40: 
        tekenImg(groote * rij, groote * colom, groote, muur38);
        break;
      case -41: 
        tekenImg(groote * rij, groote * colom, groote, muur39);
        break;
      case -42: 
        tekenImg(groote * rij, groote * colom, groote, muur40);
        break;
      case -43: 
        tekenImg(groote * rij, groote * colom, groote, muur41);
        break;
      case -44: 
        tekenImg(groote * rij, groote * colom, groote, muur42);
        break;
      case -45: 
        tekenImg(groote * rij, groote * colom, groote, muur43);
        break;
      case -46: 
        tekenImg(groote * rij, groote * colom, groote, muur44);
        break;
      case -47: 
        tekenImg(groote * rij, groote * colom, groote, muur45);
        break;
      default :
        println("er word " + scene[colom][rij] + " gegeven en deze heeft geen afbeelding toegewezen gekregen");
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
