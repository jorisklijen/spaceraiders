final int KNOP__ = 10;
final int PORTAL = 11;

final int MUNT__ = 12;
final int DIAMAN = 13;
final int B_RAID = 14;

final int Z_TANK = 15;

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

final int RANDOM = 2;
final int SPAWN_ = 3;

final int GET_RANDOM() {
  return RANDOM;
}
final int GET_SPAWN_() {
  return SPAWN_;
}
final int GET_KNOP__() {
  return KNOP__;
}
final int GET_PORTAL() {
  return PORTAL;
}
final int GET_MUNT__() {
  return MUNT__;
}
final int GET_DIAMAN() {
  return DIAMAN;
}
final int GET_B_RAID() {
  return B_RAID;
}
final int GET_Z_TANK() {
  return Z_TANK;
}
final int GET_LEEG_0() {
  return LEEG_0;
}
final int GET_LEEG_1() {
  return LEEG_1;
}
final int GET_MUUR__() {
  return MUUR__;
}
final int GET_MUUR0_() {
  return MUUR0_;
}
final int GET_MUUR1_() {
  return MUUR1_;
}
final int GET_MUUR2_() {
  return MUUR2_;
}
final int GET_MUUR3_() {
  return MUUR3_;
}
final int GET_MUUR4_() {
  return MUUR4_;
}
final int GET_MUUR5_() {
  return MUUR5_;
}
final int GET_MUUR6_() {
  return MUUR6_;
}
final int GET_MUUR7_() {
  return MUUR7_;
}
final int GET_MUUR8_() {
  return MUUR8_;
}
final int GET_MUUR9_() {
  return MUUR9_;
}
final int GET_MUUR10() {
  return MUUR10;
}
final int GET_MUUR11() {
  return MUUR11;
}
final int GET_MUUR12() {
  return MUUR12;
}
final int GET_MUUR13() {
  return MUUR13;
}
final int GET_MUUR14() {
  return MUUR14;
}
final int GET_MUUR15() {
  return MUUR15;
}
final int GET_MUUR16() {
  return MUUR16;
}
final int GET_MUUR17() {
  return MUUR17;
}
final int GET_MUUR18() {
  return MUUR18;
}
final int GET_MUUR19() {
  return MUUR19;
}
final int GET_MUUR20() {
  return MUUR20;
}
final int GET_MUUR21() {
  return MUUR21;
}
final int GET_MUUR22() {
  return MUUR22;
}
final int GET_MUUR23() {
  return MUUR23;
}
final int GET_MUUR24() {
  return MUUR24;
}
final int GET_MUUR25() {
  return MUUR25;
}
final int GET_MUUR26() {
  return MUUR26;
}
final int GET_MUUR27() {
  return MUUR27;
}
final int GET_MUUR28() {
  return MUUR28;
}
final int GET_MUUR29() {
  return MUUR29;
}
final int GET_MUUR30() {
  return MUUR30;
}
final int GET_MUUR31() {
  return MUUR31;
}
final int GET_MUUR32() {
  return MUUR32;
}
final int GET_MUUR33() {
  return MUUR33;
}
final int GET_MUUR34() {
  return MUUR34;
}
final int GET_MUUR35() {
  return MUUR35;
}
final int GET_MUUR36() {
  return MUUR36;
}
final int GET_MUUR37() {
  return MUUR37;
}
final int GET_MUUR38() {
  return MUUR38;
}
final int GET_MUUR39() {
  return MUUR39;
}
final int GET_MUUR40() {
  return MUUR40;
}
final int GET_MUUR41() {
  return MUUR41;
}
final int GET_MUUR42() {
  return MUUR42;
}
final int GET_MUUR43() {
  return MUUR43;
}
final int GET_MUUR44() {
  return MUUR44;
}
final int GET_MUUR45() {
  return MUUR45;
}

void tekenScene(int groote, int[][]scene) {
  for (int colom = 0; colom < scene.length; colom++) {
    for (int rij = 0; rij < scene[colom].length; rij++) {
      if (scene[colom][rij] > 0) {
        tekenImg(groote * rij, groote * colom, groote, getVloer());
      } else {
        tekenImg(groote * rij, groote * colom, groote, getSpace());
      }
      switch(scene[colom][rij]) {
      case 2: 
      // random element raider of coin.
      if (random(2) >= 0){
        tekenImg(groote * rij, groote * colom, groote, getDiamant());
      }else{
        tekenImg(groote * rij, groote * colom, groote, getBadRaider());
      }
        break;
      case 10: 
        tekenImg(groote * rij, groote * colom, groote, getKnop());
        break;
      case 11: 
        tekenImg(groote * rij, groote * colom, groote, getPortaal());
        break;
      case 12: 
        tekenImg(groote * rij, groote * colom, groote, geTMunt());
        break;
      case 13: 
        tekenImg(groote * rij, groote * colom, groote, getDiamant());
        break;
      case 14: 
        tekenImg(groote * rij, groote * colom, groote, getBadRaider());
        break;
      case 15: 
        tekenImg(groote * rij, groote * colom, groote, getZuurstofTank());
        break;
      case 1: 
        //niks is gewoon een leege vloertegel
        break;
      case 0: 
        //niks is gewoon een leege ruitetegel
        break;
      case -1: 
        tekenImg(groote * rij, groote * colom, groote, getMuur());
        break;
      case -2: 
        tekenImg(groote * rij, groote * colom, groote, getMuur0());
        break;
      case -3: 
        tekenImg(groote * rij, groote * colom, groote, getMuur1());
        break;
      case -4: 
        tekenImg(groote * rij, groote * colom, groote, getMuur2());
        break;
      case -5: 
        tekenImg(groote * rij, groote * colom, groote, getMuur3());
        break;
      case -6: 
        tekenImg(groote * rij, groote * colom, groote, getMuur4());
        break;
      case -7: 
        tekenImg(groote * rij, groote * colom, groote, getMuur5());
        break;
      case -8: 
        tekenImg(groote * rij, groote * colom, groote, getMuur6());
        break;
      case -9: 
        tekenImg(groote * rij, groote * colom, groote, getMuur7());
        break;
      case -10: 
        tekenImg(groote * rij, groote * colom, groote, getMuur8());
        break;
      case -11: 
        tekenImg(groote * rij, groote * colom, groote, getMuur9());
        break;
      case -12: 
        tekenImg(groote * rij, groote * colom, groote, getMuur10());
        break;
      case -13: 
        tekenImg(groote * rij, groote * colom, groote, getMuur11());
        break;
      case -14: 
        tekenImg(groote * rij, groote * colom, groote, getMuur12());
        break;
      case -15: 
        tekenImg(groote * rij, groote * colom, groote, getMuur13());
        break;
      case -16: 
        tekenImg(groote * rij, groote * colom, groote, getMuur14());
        break;
      case -17: 
        tekenImg(groote * rij, groote * colom, groote, getMuur15());
        break;
      case -18: 
        tekenImg(groote * rij, groote * colom, groote, getMuur16());
        break;
      case -19: 
        tekenImg(groote * rij, groote * colom, groote, getMuur17());
        break;
      case -20: 
        tekenImg(groote * rij, groote * colom, groote, getMuur18());
        break;
      case -21: 
        tekenImg(groote * rij, groote * colom, groote, getMuur19());
        break;
      case -22: 
        tekenImg(groote * rij, groote * colom, groote, getMuur20());
        break;
      case -23: 
        tekenImg(groote * rij, groote * colom, groote, getMuur21());
        break;
      case -24: 
        tekenImg(groote * rij, groote * colom, groote, getMuur22());
        break;
      case -25: 
        tekenImg(groote * rij, groote * colom, groote, getMuur23());
        break;
      case -26: 
        tekenImg(groote * rij, groote * colom, groote, getMuur24());
        break;
      case -27: 
        tekenImg(groote * rij, groote * colom, groote, getMuur25());
        break;
      case -28: 
        tekenImg(groote * rij, groote * colom, groote, getMuur26());
        break;
      case -29: 
        tekenImg(groote * rij, groote * colom, groote, getMuur27());
        break;
      case -30: 
        tekenImg(groote * rij, groote * colom, groote, getMuur28());
        break;
      case -31: 
        tekenImg(groote * rij, groote * colom, groote, getMuur29());
        break;
      case -32: 
        tekenImg(groote * rij, groote * colom, groote, getMuur30());
        break;
      case -33: 
        tekenImg(groote * rij, groote * colom, groote, getMuur31());
        break;
      case -34: 
        tekenImg(groote * rij, groote * colom, groote, getMuur32());
        break;
      case -35: 
        tekenImg(groote * rij, groote * colom, groote, getMuur33());
        break;
      case -36: 
        tekenImg(groote * rij, groote * colom, groote, getMuur34());
        break;
      case -37: 
        tekenImg(groote * rij, groote * colom, groote, getMuur35());
        break;
      case -38: 
        tekenImg(groote * rij, groote * colom, groote, getMuur36());
        break;
      case -39: 
        tekenImg(groote * rij, groote * colom, groote, getMuur37());
        break;      
      case -40: 
        tekenImg(groote * rij, groote * colom, groote, getMuur38());
        break;
      case -41: 
        tekenImg(groote * rij, groote * colom, groote, getMuur39());
        break;
      case -42: 
        tekenImg(groote * rij, groote * colom, groote, getMuur40());
        break;
      case -43: 
        tekenImg(groote * rij, groote * colom, groote, getMuur41());
        break;
      case -44: 
        tekenImg(groote * rij, groote * colom, groote, getMuur42());
        break;
      case -45: 
        tekenImg(groote * rij, groote * colom, groote, getMuur43());
        break;
      case -46: 
        tekenImg(groote * rij, groote * colom, groote, getMuur44());
        break;
      case -47: 
        tekenImg(groote * rij, groote * colom, groote, getMuur45());
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
