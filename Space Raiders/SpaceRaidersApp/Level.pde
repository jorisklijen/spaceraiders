final int KNOP__ = 10;
final int PORTAL = 11;

final int MUNT__ = 12;
final int DIAMAN = 13;
final int B_Raid = 14;

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

final int GET_LEEG_0(){
 return LEEG_0; 
}

final int GET_LEEG_1(){
 return LEEG_1; 
}

final int GET_MUUR__(){
 return MUUR__; 
}

final int GET_MUUR0_(){
 return MUUR0_; 
}

final int GET_MUUR1_(){
 return MUUR1_; 
}

final int GET_MUUR2_(){
 return MUUR2_; 
}

final int GET_MUUR3_(){
 return MUUR3_; 
}

final int GET_MUUR4_(){
 return MUUR4_; 
}

final int GET_MUUR5_(){
 return MUUR5_; 
}

void tekenScene(int groote, int[][]scene) {
  for (int colom = 0; colom < scene.length; colom++) {
    for (int rij = 0; rij < scene[colom].length; rij++) {
      if (scene[colom][rij] > 0) {
        tekenImg(groote * rij, groote * colom, groote, GetVloer());
      } else {
        tekenImg(groote * rij, groote * colom, groote, GetSpace());
      }
      switch(scene[colom][rij]) {
      case 10: 
        tekenImg(groote * rij, groote * colom, groote, getKnop());
        break;
      case 11: 
        tekenImg(groote * rij, groote * colom, groote, GetPortaal());
        break;
      case 12: 
        tekenImg(groote * rij, groote * colom, groote, GeTMunt());
        break;
      case 13: 
        tekenImg(groote * rij, groote * colom, groote, GetDiamant());
        break;
      case 14: 
        tekenImg(groote * rij, groote * colom, groote, GetBadRaider());
        break;
      case 15: 
        tekenImg(groote * rij, groote * colom, groote, GetZuurstofTank());
        break;
      case 1: 
        //niks is gewoon een leege vloertegel
        break;
      case 0: 
        //niks is gewoon een leege ruitetegel
        break;
      case -1: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur());
        break;
      case -2: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur0());
        break;
      case -3: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur1());
        break;
      case -4: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur2());
        break;
      case -5: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur3());
        break;
      case -6: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur4());
        break;
      case -7: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur5());
        break;
      case -8: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur6());
        break;
      case -9: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur7());
        break;
      case -10: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur8());
        break;
      case -11: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur9());
        break;
      case -12: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur10());
        break;
      case -13: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur11());
        break;
      case -14: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur12());
        break;
      case -15: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur13());
        break;
      case -16: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur14());
        break;
      case -17: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur15());
        break;
      case -18: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur16());
        break;
      case -19: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur17());
        break;
      case -20: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur18());
        break;
      case -21: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur19());
        break;
      case -22: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur20());
        break;
      case -23: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur21());
        break;
      case -24: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur22());
        break;
      case -25: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur23());
        break;
      case -26: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur24());
        break;
      case -27: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur25());
        break;
      case -28: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur26());
        break;
      case -29: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur27());
        break;
      case -30: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur28());
        break;
      case -31: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur29());
        break;
      case -32: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur30());
        break;
      case -33: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur31());
        break;
      case -34: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur32());
        break;
      case -35: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur33());
        break;
      case -36: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur34());
        break;
      case -37: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur35());
        break;
      case -38: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur36());
        break;
      case -39: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur37());
        break;      
      case -40: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur38());
        break;
      case -41: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur39());
        break;
      case -42: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur40());
        break;
      case -43: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur41());
        break;
      case -44: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur42());
        break;
      case -45: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur43());
        break;
      case -46: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur44());
        break;
      case -47: 
        tekenImg(groote * rij, groote * colom, groote, GetMuur45());
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
