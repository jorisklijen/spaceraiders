boolean gamestatus = true;
boolean gameGewonnen = false;

final int KLEUR_ZUURSTOF_ACHTERGROND = #21252d;
final int KLEUR_ZUURSTOF = #9bb4ed;
final int KLEUR_TEXT = #D6FFFF;//#9bb4ed;

void setGamestatus(boolean status) {
  gamestatus = status;
}
void setGameGewonnen(boolean win) {
  gameGewonnen = win;
}

void gameloop(int groote, int level, int aantalSchatten, int score) {
  final int STARTPOSX = 13;
  final int STARTPOSY = 2;
  //gamestatus = getSpelerLevend();
  tekenScene(groote, levelBerekeningen(getScenes()[level], getSchatten()[aantalSchatten], getStekels(), GET_RANDOM(), GET_MUNT__(), GET_DIAMAN(), GET_B_RAID(), GET_LEEG_1()));
  switch (int(!gamestatus || gameGewonnen)) {
  case 0:
    //levend
    doodSpeler(getScenes()[level], GET_STKEL1(), GET_STKEL2(), GET_STKEL3(), GET_STKEL4());
    zuurstofAfname();
    tekenSpeler(getSpeler1(), getXPosSpeler() * groote, getYPosSpeler() * groote, groote, KLEUR_ZUURSTOF_ACHTERGROND, KLEUR_ZUURSTOF, getZuurstof());
    telScore(getScenes(), level, getXPosSpeler(), getYPosSpeler(), GET_MUNT__(), GET_DIAMAN(), score, GET_LEEG_1(), GET_B_RAID());
    extraZuurstof(getScenes(), level, getXPosSpeler(), getYPosSpeler(), GET_Z_TANK(),GET_LEEG_1());
    portaalTeleportatie(getScenes()[level], getXPosSpeler(), getYPosSpeler(), GET_PORTL1(), STARTPOSX, STARTPOSY);
    beweegSpeler(getScenes()[level]);
    drukOpKnop(getScenes(), level, getXPosSpeler(), getYPosSpeler(), GET_KNOP__(), GET_PORTL0(), GET_PORTL1(), GET_LEEG_1());

    break;
  case 1:
    // dood of game over 
    if (gamestatus == false) {
      setStatus(1);
      setGameScherm(false);
      setEindScherm(true);
      setLevel(0);
      // eind schrem met score + text dat speler het niet gehaald heeft.
    } else if (gameGewonnen == true) {
      setStatus(0);
      setGameScherm(false);
      setEindScherm(true);
      setLevel(0);
    }
    break;
  default:
    println("ERROR " + gamestatus); // hoort hier nooit te komen.
    break;
  }
  tekenScore(getScore(), 20, 20, KLEUR_TEXT, getSpaceFond(), groote);
}

//laten en de posietes verwisselen.
int[][] levelBerekeningen(int[][] level, int hoeveelhijd, boolean stekelsaan, int randomPos, int munt, int diamant, int badRaider, int leeg) {
  for (int i =0; i < level.length; i++) {
    for (int j = 0; j < level[i].length; j++) {
      for (int h = 0; h <= hoeveelhijd; h++) {
        if (level[i][j] == randomPos && h <= hoeveelhijd) {
          switch(int(random(4))) {
          case 0:
            level[i][j] = badRaider;
            break;
          case 1:
            level[i][j] = munt;
            break;
          case 2:
            level[i][j] = diamant;
            break;
          case 3:
            level[i][j] = munt;
            break;
          }
        } else if (level[i][j] == randomPos) {
          level[i][j] = leeg;
        }
      }      
      if (stekelsaan) {
      } else if (level[i][j] == GET_STKEL1() || level[i][j] == GET_STKEL2() || level[i][j] == GET_STKEL3() || level[i][j] == GET_STKEL4()) 
      {
        level[i][j] = GET_LEEG_1();
      }
    }
  }
  return level;
}
