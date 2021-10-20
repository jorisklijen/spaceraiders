boolean gamestatus = true;
boolean gameGewonnen = false;

final int KLEUR_ZUURSTOF_ACHTERGROND = #21252d;
final int KLEUR_ZUURSTOF = #9bb4ed;
final int KLEUR_TEXT = #D6FFFF;//#9bb4ed;

int[][] levelStatus;

void setGameGewonnen(boolean win) {
  gameGewonnen = win;
}

void gameloop(int groote, int level) {
  final int STARTPOSX = 13;
  final int STARTPOSY = 2;

  tekenScene(groote, levelBerekeningen(getScenes()[level], getAantalSchatten(), getStekels(), GET_RANDOM(), GET_MUNT__(), GET_DIAMAN(), GET_B_RAID(), GET_LEEG_1()));
  switch (int(!gamestatus || gameGewonnen)) {
  case 0:
    //levend
    zuurstofAfname();
    tekenSpeler(getSpeler1(), getXPosSpeler() * groote, getYPosSpeler() * groote, groote, KLEUR_ZUURSTOF_ACHTERGROND, KLEUR_ZUURSTOF, getZuurstof());
    portaalTeleportatie(getScenes()[level], getXPosSpeler(), getYPosSpeler(), GET_PORTL1(), STARTPOSX, STARTPOSY);
    beweegSpeler(getScenes()[level]);
    drukOpKnop(getScenes(), level, getXPosSpeler(), getYPosSpeler(), GET_KNOP__(), GET_PORTL0(), GET_PORTL1(), GET_LEEG_1());
    telScore(getScenes(), level, getXPosSpeler(), getYPosSpeler(), GET_MUNT__(), GET_DIAMAN(), getScore(), GET_LEEG_1(), GET_B_RAID());
    tekenScore(getScore(), 20, 20, KLEUR_TEXT, getSpaceFond(), groote);
    break;
  case 1:
    // dood of game over 
    if (gamestatus == false) {
      // speler is dood
      // eind schrem met score + text dat speler het niet gehaald heeft.
    } 
    // gewonnen
    else if (gameGewonnen == true) {
      // speler heefthet spel gehaald
      // eind schrem met score + text dat de speler alle levels gehaald heeft en ondsnapt is uit het level
    }
    // 3d arry weer terug zetten naar origineele voor het overniew spelen
    break;
  default:
    println("ERROR " + gamestatus); // hoort hier nooit te komen als het goed is.
    break;
  }
  tekenScore(getScore(), 20, 20, KLEUR_TEXT, getSpaceFond(), groote);
}

// void van maaken array er inlaten en de posietes verwisselen.
int[][] levelBerekeningen(int[][] level, int aantal, boolean stekelsaan, int randomPos, int munt, int diamant, int badRaider, int leeg) {
  for (int i =0; i < level.length; i++) {
    for (int j = 0; j < level[i].length; j++) {
      for (int a = 0; a < aantal; a++) {
        if (level[i][j] == randomPos && a < aantal) {
          switch(int(random(4))) {
          case 0:
            //hier iets van een set?
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
