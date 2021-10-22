import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class SpaceRaidersApp extends PApplet {

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

public void settings() {
  size(vensterBreete, vensterHoogte);
}

public void setup() {
  surface.setTitle(tietel);
  laadAfbeeldingen();
  laadFond();
  frameRate(fps);
}

public void draw() {
  laadScene();
}
int status = 0;
final int KLEUR_GAMEOVER_TEXT = 0xffD6FFFF;
final int KLEUR2_GAMEOVER_TEXT = 0xffD6FFFF;
int eindschremKnopHoogte = 75;
int eindschremKnopBreete = 200;
int spacing = 150;

public void setStatus(int s) {
  status = s;
}

public void eindLoop(int groote, int level, int score) {
  switch(status) {
  case 0 :
    // gewonnen!!
    tekenScene(groote, getScenes()[level]);
    tekenKnop(width / 2 - eindschremKnopBreete / 2, height - (height / 4), eindschremKnopBreete, eindschremKnopHoogte, KNOP_KLEUR, KLEUR_MENU, TEXT_KLEUR, groote, letterGroote, getSpaceFond(), "Back");
    tekenEindScore(width / 2, height/2 - (height / 4), spacing, score, groote, 0.9f, KLEUR_GAMEOVER_TEXT, getMenuFont());
    if (mousePressed) {
      if(mouseX >= width / 2 - eindschremKnopBreete / 2 && mouseX <= width / 2 - eindschremKnopBreete / 2 + knopBreete 
        && mouseY >= height - (height / 4) && mouseY <= height - (height / 4) + eindschremKnopHoogte){
          //print("hallo");
        setEindScherm(false);
        setStartScherm(true);
      }
    }
    break;
  case 1:
    // dood
    image(fade, 0, 0, width, height);
    tekenKnop(width / 2 - eindschremKnopBreete / 2, height - (height / 4), eindschremKnopBreete, eindschremKnopHoogte, KNOP_KLEUR, KLEUR_MENU, TEXT_KLEUR, groote, letterGroote, getSpaceFond(), "Back");
    tekenEindScore(width / 2, height/2 - (height / 4), spacing, score, groote, 0.9f, KLEUR2_GAMEOVER_TEXT, getMenuFont());
    if (mousePressed) {
      if(mouseX >= width / 2 - eindschremKnopBreete / 2 && mouseX <= width / 2 - eindschremKnopBreete / 2 + knopBreete 
        && mouseY >= height - (height / 4) && mouseY <= height - (height / 4) + eindschremKnopHoogte){
          //print("hallo");
        setEindScherm(false);
        setStartScherm(true);
      }
    }
    break;
  default:
    println("sorry er ging iets mis");
    setStartScherm(true);
    setEindScherm(false);
    break;
  }
}

public void tekenEindScore(int x, int y, int spacing, int score, int groote, float factor, int kleur, PFont font ) {
  fill(kleur);
  textFont(font);
  textSize(groote * factor);
  textAlign(CENTER, TOP);
  if (status > 0) {
    text("Too bad you didn't make it to the end", x , y - spacing );
    text("Your score was:  " + score, x, y );
  } else {
    text("Congratulations you won the game", x, y - spacing );
    text("Your score was:  " + score, x, y );
  }
}
boolean gamestatus = true;
boolean gameGewonnen = false;

final int KLEUR_ZUURSTOF_ACHTERGROND = 0xff21252d;
final int KLEUR_ZUURSTOF = 0xff9bb4ed;
final int KLEUR_TEXT = 0xffD6FFFF;//#9bb4ed;

public void setGamestatus(boolean status) {
  gamestatus = status;
}
public void setGameGewonnen(boolean win) {
  gameGewonnen = win;
}

public void gameloop(int groote, int level, int aantalSchatten, int score) {
  final int STARTPOSX = 13;
  final int STARTPOSY = 2;
  //gamestatus = getSpelerLevend();
  tekenScene(groote, levelBerekeningen(getScenes()[level], getSchatten()[aantalSchatten], getStekels(), GET_RANDOM(), GET_MUNT__(), GET_DIAMAN(), GET_B_RAID(), GET_LEEG_1()));
  switch (PApplet.parseInt(!gamestatus || gameGewonnen)) {
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
public int[][] levelBerekeningen(int[][] level, int hoeveelhijd, boolean stekelsaan, int randomPos, int munt, int diamant, int badRaider, int leeg) {
  for (int i =0; i < level.length; i++) {
    for (int j = 0; j < level[i].length; j++) {
      for (int h = 0; h <= hoeveelhijd; h++) {
        if (level[i][j] == randomPos && h <= hoeveelhijd) {
          switch(PApplet.parseInt(random(4))) {
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
public void drukOpKnop(int[][][] level, int huidigLevel, int spelerX, int spelerY, int knop, int portaalVerborgen, int portaal, int leeg) {
  int[][][] temp = level;
  for (int i = 0; i < level[huidigLevel].length; i++) {
    for (int j = 0; j < level[huidigLevel][i].length; j++) {
      if (level[huidigLevel][spelerY][spelerX] == knop && temp[huidigLevel][i][j] == portaalVerborgen) {
        verwijderObject(level, huidigLevel, spelerX, spelerY, knop, leeg);
        temp[huidigLevel][i][j] = portaal;
        setScenes(temp);
      }
    }
  }
}

public void verwijderObject(int[][][] level, int huidigLevel, int spelerX, int spelerY, int object, int leeg) {
  int[][][] temp = level;
  if (level[huidigLevel][spelerY][spelerX] == object) {
    temp[huidigLevel][spelerY][spelerX] = leeg;
    setScenes(temp);
  }
}
PImage speler1;
PImage speler2;

PImage badRaider;
PImage monster;
PImage diamant;
PImage munt;
PImage knop;
PImage portaal;
PImage zuurstofTank;

PImage stekel1;
PImage stekel2;
PImage stekel3;
PImage stekel4;

PImage space;
PImage vloer;
PImage muur;
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
PImage muur13;
PImage muur14;
PImage muur15;
PImage muur16;
PImage muur17;
PImage muur18;
PImage muur19;
PImage muur20;
PImage muur21;
PImage muur22;
PImage muur23;
PImage muur24;
PImage muur25;
PImage muur26;
PImage muur27;
PImage muur28;
PImage muur29;
PImage muur30;
PImage muur31;
PImage muur32;
PImage muur33;
PImage muur34;
PImage muur35;
PImage muur36;
PImage muur37;
PImage muur38;
PImage muur39;
PImage muur40;
PImage muur41;
PImage muur42;
PImage muur43;
PImage muur44;
PImage muur45;

PImage fade;

public PImage getFade() {
  return fade;
}

PFont spaceFond;
PFont menuFont;
PFont bloedFont;

public PImage getSpeler1() {
  return speler1;
}
public PImage getSpeler2() {
  return speler2;
}
public PImage getKnop() {
  return knop;
}
public PImage getPortaal() {
  return portaal;
}
public PImage geTMunt() {
  return munt;
}
public PImage getDiamant() {
  return diamant;
}
public PImage getVloer() {
  return vloer;
}
public PImage getSpace() {
  return space;
}
public PImage getBadRaider() {
  return badRaider;
}
public PImage getZuurstofTank() {
  return zuurstofTank;
}
public PImage getMuur() {
  return muur;
}
public PImage getMuur0() {
  return muur0;
}
public PImage getMuur1() {
  return muur1;
}
public PImage getMuur2() {
  return muur2;
}
public PImage getMuur3() {
  return muur3;
}
public PImage getMuur4() {
  return muur4;
}
public PImage getMuur5() {
  return muur5;
}
public PImage getMuur6() {
  return muur6;
}
public PImage getMuur7() {
  return muur7;
}
public PImage getMuur8() {
  return muur8;
}
public PImage getMuur9() {
  return muur9;
}
public PImage getMuur10() {
  return muur10;
}
public PImage getMuur11() {
  return muur11;
}
public PImage getMuur12() {
  return muur12;
}
public PImage getMuur13() {
  return muur13;
}
public PImage getMuur14() {
  return muur14;
}
public PImage getMuur15() {
  return muur15;
}
public PImage getMuur16() {
  return muur16;
}
public PImage getMuur17() {
  return muur17;
}
public PImage getMuur18() {
  return muur18;
}
public PImage getMuur19() {
  return muur19;
}
public PImage getMuur20() {
  return muur20;
}
public PImage getMuur21() {
  return muur21;
}
public PImage getMuur22() {
  return muur22;
}
public PImage getMuur23() {
  return muur23;
}
public PImage getMuur24() {
  return muur24;
}
public PImage getMuur25() {
  return muur25;
}
public PImage getMuur26() {
  return muur26;
}
public PImage getMuur27() {
  return muur27;
}
public PImage getMuur28() {
  return muur28;
}
public PImage getMuur29() {
  return muur29;
}
public PImage getMuur30() {
  return muur30;
}
public PImage getMuur31() {
  return muur31;
}
public PImage getMuur32() {
  return muur32;
}
public PImage getMuur33() {
  return muur33;
}
public PImage getMuur34() {
  return muur34;
}
public PImage getMuur35() {
  return muur35;
}
public PImage getMuur36() {
  return muur36;
}
public PImage getMuur37() {
  return muur37;
}
public PImage getMuur38() {
  return muur38;
}
public PImage getMuur39() {
  return muur39;
}
public PImage getMuur40() {
  return muur40;
}
public PImage getMuur41() {
  return muur41;
}
public PImage getMuur42() {
  return muur42;
}
public PImage getMuur43() {
  return muur43;
}
public PImage getMuur44() {
  return muur44;
}
public PImage getMuur45() {
  return muur45;
}

public PImage getStekel1() {
  return stekel1;
}

public PImage getStekel2() {
  return stekel2;
}

public PImage getStekel3() {
  return stekel3;
}

public PImage getStekel4() {
  return stekel4;
}

public PFont getSpaceFond() {
  return spaceFond;
}

public PFont getMenuFont() {
  return menuFont;
}

public PFont getBloedFont() {
  return bloedFont;
}

public void laadFond() {
  spaceFond = createFont("space.otf", 8);
  menuFont = createFont("menuFont.otf", 16);
  bloedFont = createFont("bloedFont.otf", 16);
}

public void laadAfbeeldingen() {

  speler1 = loadImage("player1.png");
  speler2 = loadImage("player2.png");

  badRaider = loadImage("badRaider.png");
  monster = loadImage("monster.png");
  diamant = loadImage("alt_diamant.png");
  munt = loadImage("alt_munt.png");
  knop = loadImage("knop.png");
  portaal= loadImage("alt_portaal.png");
  zuurstofTank = loadImage("alt_zuurstofTank.png");

  stekel1 = loadImage("spike1.png");
  stekel2 = loadImage("spike2.png");
  stekel3 = loadImage("spike3.png");
  stekel4 = loadImage("spike4.png");

  fade = loadImage("fade.png");

  space = loadImage("alt_space2.png");
  vloer = loadImage("vloer.png");
  muur  = loadImage("alt_muur.png");
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
  muur13 = loadImage("muur13.png");
  muur14 = loadImage("muur14.png");
  muur15 = loadImage("muur15.png");
  muur16 = loadImage("muur16.png");
  muur17 = loadImage("muur17.png");
  muur18 = loadImage("muur18.png");
  muur19 = loadImage("muur19.png");
  muur20 = loadImage("muur20.png");
  muur21 = loadImage("muur21.png");
  muur22 = loadImage("muur22.png");
  muur23 = loadImage("muur23.png");
  muur24 = loadImage("muur24.png");
  muur25 = loadImage("muur25.png");
  muur26 = loadImage("muur26.png");
  muur27 = loadImage("muur27.png");
  muur28 = loadImage("muur28.png");
  muur29 = loadImage("muur29.png");
  muur30 = loadImage("muur30.png");
  muur31 = loadImage("muur31.png");
  muur32 = loadImage("muur32.png");
  muur33 = loadImage("muur33.png");
  muur34 = loadImage("muur34.png");
  muur35 = loadImage("muur35.png");
  muur36 = loadImage("muur36.png");
  muur37 = loadImage("muur37.png");
  muur38 = loadImage("muur38.png");
  muur39 = loadImage("muur39.png");
  muur40 = loadImage("muur40.png");
  muur41 = loadImage("muur41.png");
  muur42 = loadImage("muur42.png");
  muur43 = loadImage("muur43.png");
  muur44 = loadImage("muur44.png");
  muur45 = loadImage("muur45.png");
}
final int KNOP__ = 10;
final int PORTL0 = 7;
final int PORTL1 = 8;

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

final int STKEL1 = 3;
final int STKEL2 = 4;
final int STKEL3 = 5;
final int STKEL4 = 6;

public final int GET_STKEL1() {
  return STKEL1;
}

public final int GET_STKEL2() {
  return STKEL2;
}

public final int GET_STKEL3() {
  return STKEL3;
}

public final int GET_STKEL4() {
  return STKEL4;
}

public final int GET_RANDOM() {
  return RANDOM;
}

public final int GET_KNOP__() {
  return KNOP__;
}
public final int GET_PORTL0() {
  return PORTL0;
}
public final int GET_PORTL1() {
  return PORTL1;
}

public final int GET_MUNT__() {
  return MUNT__;
}
public final int GET_DIAMAN() {
  return DIAMAN;
}
public final int GET_B_RAID() {
  return B_RAID;
}
public final int GET_Z_TANK() {
  return Z_TANK;
}
public final int GET_LEEG_0() {
  return LEEG_0;
}
public final int GET_LEEG_1() {
  return LEEG_1;
}
public final int GET_MUUR__() {
  return MUUR__;
}
public final int GET_MUUR0_() {
  return MUUR0_;
}
public final int GET_MUUR1_() {
  return MUUR1_;
}
public final int GET_MUUR2_() {
  return MUUR2_;
}
public final int GET_MUUR3_() {
  return MUUR3_;
}
public final int GET_MUUR4_() {
  return MUUR4_;
}
public final int GET_MUUR5_() {
  return MUUR5_;
}
public final int GET_MUUR6_() {
  return MUUR6_;
}
public final int GET_MUUR7_() {
  return MUUR7_;
}
public final int GET_MUUR8_() {
  return MUUR8_;
}
public final int GET_MUUR9_() {
  return MUUR9_;
}
public final int GET_MUUR10() {
  return MUUR10;
}
public final int GET_MUUR11() {
  return MUUR11;
}
public final int GET_MUUR12() {
  return MUUR12;
}
public final int GET_MUUR13() {
  return MUUR13;
}
public final int GET_MUUR14() {
  return MUUR14;
}
public final int GET_MUUR15() {
  return MUUR15;
}
public final int GET_MUUR16() {
  return MUUR16;
}
public final int GET_MUUR17() {
  return MUUR17;
}
public final int GET_MUUR18() {
  return MUUR18;
}
public final int GET_MUUR19() {
  return MUUR19;
}
public final int GET_MUUR20() {
  return MUUR20;
}
public final int GET_MUUR21() {
  return MUUR21;
}
public final int GET_MUUR22() {
  return MUUR22;
}
public final int GET_MUUR23() {
  return MUUR23;
}
public final int GET_MUUR24() {
  return MUUR24;
}
public final int GET_MUUR25() {
  return MUUR25;
}
public final int GET_MUUR26() {
  return MUUR26;
}
public final int GET_MUUR27() {
  return MUUR27;
}
public final int GET_MUUR28() {
  return MUUR28;
}
public final int GET_MUUR29() {
  return MUUR29;
}
public final int GET_MUUR30() {
  return MUUR30;
}
public final int GET_MUUR31() {
  return MUUR31;
}
public final int GET_MUUR32() {
  return MUUR32;
}
public final int GET_MUUR33() {
  return MUUR33;
}
public final int GET_MUUR34() {
  return MUUR34;
}
public final int GET_MUUR35() {
  return MUUR35;
}
public final int GET_MUUR36() {
  return MUUR36;
}
public final int GET_MUUR37() {
  return MUUR37;
}
public final int GET_MUUR38() {
  return MUUR38;
}
public final int GET_MUUR39() {
  return MUUR39;
}
public final int GET_MUUR40() {
  return MUUR40;
}
public final int GET_MUUR41() {
  return MUUR41;
}
public final int GET_MUUR42() {
  return MUUR42;
}
public final int GET_MUUR43() {
  return MUUR43;
}
public final int GET_MUUR44() {
  return MUUR44;
}
public final int GET_MUUR45() {
  return MUUR45;
}

public void tekenScene(int groote, int[][]scene) {
  for (int colom = 0; colom < scene.length; colom++) {
    for (int rij = 0; rij < scene[colom].length; rij++) {
      if (scene[colom][rij] > 0) {
        tekenImg(groote * rij, groote * colom, groote, getVloer());
      } else {
        tekenImg(groote * rij, groote * colom, groote, getSpace());
      }
      switch(scene[colom][rij]) {
      case 3: 
        tekenImg(groote * rij, groote * colom, groote, getStekel1());
        break;
      case 4: 
        tekenImg(groote * rij, groote * colom, groote, getStekel2());
        break;
      case 5: 
        tekenImg(groote * rij, groote * colom, groote, getStekel3());
        break;
      case 6: 
        tekenImg(groote * rij, groote * colom, groote, getStekel4());
        break;
      case 7: 
        //onzichtbaar portaal
        tekenImg(groote * rij, groote * colom, groote, getVloer());
        break;
      case 8: 
        tekenImg(groote * rij, groote * colom, groote, getPortaal());
        break;
      case 2: 
        // random element raider of coin.
        break;
      case 10: 
        tekenImg(groote * rij, groote * colom, groote, getKnop());
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

public void tekenImg(int x, int y, int groote, PImage afbeelding) {
  image(afbeelding, x, y, groote, groote);
  //println("Zonnet " + afbeelding + "afgedrukt");
  //println("***********************");
}
public void portaalTeleportatie(int level[][], int spelerX, int spelerY, int portaal, int startposX, int startposY) {
  if (level[spelerY][spelerX] == portaal) {
    println();
    nextLevel(getLevel(), startposX, startposY);
  }
}

public void nextLevel(int level, int x, int y) {
  if (level != getScenes().length -1 && gamestatus == true) {
    setXPosSpeler(x);
    setYPosSpeler(y);
    setLevel(level + 1);
    setZuurstof(0.6f);
  } else {
    //game gewonnen!
    setGameGewonnen(true);
  }
}
boolean startScherm = true;
boolean gameScherm = false;
boolean eindScherm = false;
boolean hiscoreScherm = false;

int aantalSpelers = 1;
int level = 0;
int schaal = 100;
int score = 0;
int[] shatten = {0, 1, 2, 3, 4, 5, 6, 7, 8};
int aantalSchatten = 1;
boolean stekels = true;

int[][][]scenes = {
  {
    //menu bg index 0
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0()}, 
  }, 
  {
    //intro level 1
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR17(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR16()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_LEEG_1(), GET_MUUR10(), GET_MUUR13(), GET_MUUR13(), GET_MUUR8_(), GET_PORTL0(), GET_MUUR10(), GET_MUUR13(), GET_MUUR13(), GET_MUUR13(), GET_MUUR13(), GET_MUUR20()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_LEEG_1(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_LEEG_1(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_KNOP__(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR14(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR4_(), GET_LEEG_1(), GET_MUUR10(), GET_MUUR13(), GET_MUUR13(), GET_MUUR8_(), GET_LEEG_1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_LEEG_1(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_LEEG_1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_MUUR14(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR15()}, 
  }, 
  {
    // makkelijk level 2 
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_MUUR17(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR16(), GET_MUUR17(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR16()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_MUUR17(), GET_MUUR7_(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR6_(), GET_MUUR7_(), GET_MUUR__(), GET_MUUR__(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_MUUR__(), GET_LEEG_1(), GET_LEEG_1(), GET_PORTL0(), GET_STKEL2(), GET_LEEG_1(), GET_MUUR__(), GET_MUUR__(), GET_RANDOM(), GET_LEEG_1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR17(), GET_MUUR7_(), GET_LEEG_1(), GET_RANDOM(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_RANDOM(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_RANDOM(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_MUUR__(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR10(), GET_MUUR8_(), GET_Z_TANK(), GET_MUUR10(), GET_MUUR43(), GET_LEEG_1(), GET_STKEL1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR__(), GET_MUUR__(), GET_LEEG_1(), GET_MUUR__(), GET_MUUR9_(), GET_RANDOM(), GET_MUUR5_(), GET_MUUR15()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_STKEL4(), GET_LEEG_1(), GET_LEEG_1(), GET_RANDOM(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_KNOP__(), GET_MUUR__(), GET_LEEG_1(), GET_MUUR1_(), GET_LEEG_0()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_RANDOM(), GET_MUUR5_(), GET_MUUR4_(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR1_(), GET_LEEG_0()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_STKEL1(), GET_MUUR1_(), GET_MUUR2_(), GET_LEEG_1(), GET_LEEG_1(), GET_RANDOM(), GET_LEEG_1(), GET_MUUR5_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR15(), GET_LEEG_0()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR14(), GET_MUUR3_(), GET_MUUR15(), GET_MUUR14(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR15(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0()}, 
  }, 
  {
    // gemideld level 3
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR17(), GET_MUUR0_(), GET_MUUR21(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR21(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR21(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR16()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_MUUR__(), GET_MUUR12(), GET_MUUR__(), GET_MUUR__(), GET_MUUR9_(), GET_MUUR__(), GET_MUUR__(), GET_MUUR9_(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_RANDOM(), GET_MUUR9_(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR__(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR__(), GET_STKEL4(), GET_RANDOM(), GET_LEEG_1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_LEEG_1(), GET_MUUR__(), GET_LEEG_1(), GET_RANDOM(), GET_LEEG_1(), GET_LEEG_1(), GET_RANDOM(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR45(), GET_LEEG_1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_KNOP__(), GET_LEEG_1(), GET_MUUR__(), GET_RANDOM(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_STKEL1(), GET_LEEG_1(), GET_MUUR45(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR5_(), GET_MUUR4_(), GET_RANDOM(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR18(), GET_MUUR8_(), GET_Z_TANK(), GET_MUUR__(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR10(), GET_MUUR31(), GET_MUUR32(), GET_MUUR8_(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_MUUR__(), GET_LEEG_1(), GET_PORTL0(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_LEEG_1(), GET_MUUR5_(), GET_MUUR15()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_STKEL4(), GET_RANDOM(), GET_MUUR5_(), GET_MUUR4_(), GET_LEEG_1(), GET_RANDOM(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR1_(), GET_LEEG_0()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR14(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR15(), GET_MUUR14(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR15(), GET_LEEG_0()}, 
  }, 
  {
    // moeilijk level 4
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_MUUR17(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR16(), GET_LEEG_0(), GET_MUUR17(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR16()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_MUUR17(), GET_MUUR0_(), GET_MUUR7_(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR28(), GET_MUUR0_(), GET_MUUR7_(), GET_MUUR__(), GET_MUUR__(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR17(), GET_MUUR7_(), GET_MUUR__(), GET_MUUR__(), GET_LEEG_1(), GET_RANDOM(), GET_PORTL0(), GET_MUUR9_(), GET_MUUR__(), GET_MUUR__(), GET_RANDOM(), GET_LEEG_1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_MUUR__(), GET_LEEG_1(), GET_RANDOM(), GET_LEEG_1(), GET_MUUR10(), GET_MUUR8_(), GET_MUUR__(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_STKEL4(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR__(), GET_MUUR__(), GET_LEEG_1(), GET_RANDOM(), GET_LEEG_1(), GET_KNOP__(), GET_MUUR10(), GET_MUUR20()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_STKEL4(), GET_Z_TANK(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR11(), GET_LEEG_1(), GET_MUUR__(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_LEEG_1(), GET_MUUR45(), GET_LEEG_1(), GET_RANDOM(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR9_(), GET_Z_TANK(), GET_LEEG_1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_LEEG_1(), GET_MUUR__(), GET_MUUR11(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR11(), GET_MUUR__(), GET_LEEG_1(), GET_RANDOM(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_RANDOM(), GET_LEEG_1(), GET_MUUR29(), GET_MUUR4_(), GET_LEEG_1(), GET_RANDOM(), GET_LEEG_1(), GET_MUUR12(), GET_LEEG_1(), GET_STKEL1(), GET_STKEL1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR14(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR15(), GET_MUUR14(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR19(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR15()}, 
  }, 
};

public int[][][] getScenes() {
  return scenes;
}

public void setScenes(int[][][] niewScene) {
  scenes = niewScene;
}

public int getScore() {
  return score;
}

public void setScore(int aantal) {
  score = aantal;
}

public int getSchaal() {
  return schaal;
}

public int[] getSchatten() {
  return shatten;
}

public boolean getStekels() {
  return stekels;
}

public void setStekels(boolean stekelStatus) {
  stekels = stekelStatus;
}

public boolean getGameScherm() {
  return gameScherm;
}

public boolean getStartSchrem() {
  return startScherm;
}

public int getLevel() {
  return level;
}

public void setLevel(int huidiglevel) {
  level = huidiglevel;
}

public void setGameScherm(boolean resultaat) {
  gameScherm = resultaat ;
}

public void setStartScherm(boolean resultaat) {
  startScherm = resultaat ;
}

public void setEindScherm(boolean resultaat) {
  eindScherm = resultaat ;
}

public void laadScene() {
  if (startScherm) {
    startLoop(startScherm, schaal, level, aantalSchatten, aantalSpelers);
  } else if (gameScherm) {
    gameloop(schaal, level, aantalSchatten, score);
  } else if (eindScherm) {
    eindLoop(schaal, level, score);
  }
}
int muntWaarde = 10;
int diamantWaarde = 50;
int badRaiderDeeler = 2;

public void tekenScore(int score, int x, int y, int kleur, PFont font, int groote) {
  fill(kleur);
  textFont(font);
  textSize(groote/2.1f);
  textAlign(LEFT, TOP);
  text("Score " + score, x, y );
}

public void telScore(int[][][] level, int huidigLevel, int spelerX, int spelerY, int munt, int diamant, int score, int leeg, int badRaider) {
  if (level[huidigLevel][spelerY][spelerX] == munt) {
    score = score + muntWaarde;
    verwijderObject(level, huidigLevel, spelerX, spelerY, munt, diamant, badRaider, leeg);
  } else if (level[huidigLevel][spelerY][spelerX] == diamant) {
    score = score + diamantWaarde;
    verwijderObject(level, huidigLevel, spelerX, spelerY, munt, diamant, badRaider, leeg);
  } else if (level[huidigLevel][spelerY][spelerX] == badRaider) {
    verwijderObject(level, huidigLevel, spelerX, spelerY, munt, diamant, badRaider, leeg);
    score = score / badRaiderDeeler;
  }
  setScore(score);
}


public void verwijderObject(int[][][] level, int huidigLevel, int spelerX, int spelerY, int munt, int diamant, int badRaider, int leeg) {
  int[][][] temp = level;
  if (level[huidigLevel][spelerY][spelerX] == munt || level[huidigLevel][spelerY][spelerX] == diamant || level[huidigLevel][spelerY][spelerX] == badRaider) {
    temp[huidigLevel][spelerY][spelerX] = leeg;
    setScenes(temp);
  }
}
int spelerSnelheid = 1; //<>//
int xPosSpeler = 13;
int yPosSpeler = 2;
boolean spelerLevend = true;
float zuurstof = 0.5f;
float zuurstofVerbruik = 0.0025f;
public int getXPosSpeler() {
  return xPosSpeler;
}
public int getYPosSpeler() {
  return yPosSpeler;
}
public void setXPosSpeler(int pos) {
  xPosSpeler = pos;
}
public void setYPosSpeler(int pos) {
  yPosSpeler = pos;
}
public void setZuurstof(float hoeveelhijd) {
  zuurstof = hoeveelhijd;
}

public float getZuurstof() {
  return zuurstof;
}

public void beweegSpeler(int[][] level) {

  //if (keyPressed) {
  //} else { 

  //************************************************
  //||  oude code bewegen nog een bug dat         || 
  //||  er meerdere inputs gegeven kunnen worden  ||
  //||  met een if else nogsteeds het zelfde      || 
  //||   -joris de kleijn 20/10/2021              ||
  //************************************************

  switch (keyCode) {
  case UP:
    if (level[yPosSpeler - 1][xPosSpeler] > 0 ) {
      yPosSpeler = yPosSpeler - spelerSnelheid;
    }
    break;
  case DOWN:
    if (level[yPosSpeler + 1][xPosSpeler] > 0 ) {
      yPosSpeler = yPosSpeler + spelerSnelheid;
    }
    break;
  case LEFT:
    if (level[yPosSpeler][xPosSpeler - 1] > 0 ) {
      xPosSpeler = xPosSpeler - spelerSnelheid;
    } 
    break;
  case RIGHT:
    if (level[yPosSpeler][xPosSpeler + 1] > 0 ) {
      xPosSpeler = xPosSpeler + spelerSnelheid;
    }
    break;
  }
}

public void doodSpeler(int[][] level, int stekel1, int stekel2, int stekel3, int stekel4) {
  if (zuurstof <= 0) {
    setGamestatus(false);
  }
  if (level[yPosSpeler][xPosSpeler] == stekel1 || level[yPosSpeler][xPosSpeler] == stekel2 || level[yPosSpeler][xPosSpeler] == stekel3 || level[yPosSpeler][xPosSpeler] ==  stekel4) {
    setGamestatus(false);
  }
}

public void zuurstofAfname() {
  if (spelerLevend) {
    zuurstof = constrain(zuurstof - zuurstofVerbruik, 0, 0.5f);
  }
  //println(zuurstof);
}

public void tekenSpeler(PImage speler, int x, int y, int groote, int kleurBg, int kleurO2, float zuurstofWaarde) {
  tekenZuurstofBalk(x + groote / 4, y + groote / 12, kleurO2, kleurBg, zuurstofWaarde, 0.15f, 0.5f, groote);
  image(speler, x, y, groote, groote);
}
public void tekenZuurstofBalk(int x, int y, int kleur, int kleurBg, float vulwaarde, float hoogte, float breete, int groote) {
  int afrondingBalk = 3;
  noStroke();
  //achtergrond zuurstof
  fill(kleurBg);
  rect(x, y, breete * groote, hoogte * groote, afrondingBalk);
  //zuurstof zelf
  fill(kleur);
  rect(x, y, constrain(vulwaarde, 0, breete) * groote, hoogte * groote, afrondingBalk);
}
final int KLEUR_MENU = 0xffD6FFFF;
final int KLEUR_BLOED_TEXT = 0xff8f2023;
final int TEXT_KLEUR = 0xff07080b;
final int KNOP_KLEUR = 0xff454c5e;
float knopenStartPosX = width * 2.4f;
int knopSpacing = 100;
int knopHoogte = 75, knopBreete = 200;
float letterGroote = 0.3f;
int inMenu = 0;
String deathtrapText = "ON";
boolean deathTrapSchaakelaar = true;

int[][][] kopieScenes = getScenes();

public void startLoop(boolean startScherm, int groote, int level, int aantalSchatten, int hoeveelhijdSpelers) {

  switch (inMenu) {
  case 0:
    tekenScene(groote, getScenes()[level]);

    //main logo
    tekenMenuText(true, width / 2, height / 12, groote, 2.8f, getMenuFont(), KLEUR_MENU, "SPACE RAIDERS");
    //suptext
    tekenMenuText(true, width /2 + (width / 11), height / 2 - ((height / 10) * 2), groote, 0.8f, getBloedFont(), KLEUR_BLOED_TEXT, "Escape The Stasion" );
    //knoppen
    tekenKnop(PApplet.parseInt(knopenStartPosX), height / 2 - (height / 10) + knopSpacing * 0, knopBreete, knopHoogte, KNOP_KLEUR, KLEUR_MENU, TEXT_KLEUR, groote, letterGroote, getSpaceFond(), "Hi Score");
    tekenKnop(PApplet.parseInt(knopenStartPosX), height / 2 - (height / 10) + knopSpacing * 1, knopBreete, knopHoogte, KNOP_KLEUR, KLEUR_MENU, TEXT_KLEUR, groote, letterGroote, getSpaceFond(), "Settings");
    tekenKnop(PApplet.parseInt(knopenStartPosX), height / 2 - (height / 10) + knopSpacing * 2, knopBreete, knopHoogte, KNOP_KLEUR, KLEUR_MENU, TEXT_KLEUR, groote, letterGroote, getSpaceFond(), "Start");
    tekenKnop(PApplet.parseInt(knopenStartPosX), height / 2 - (height / 10) + knopSpacing * 3, knopBreete, knopHoogte, KNOP_KLEUR, KLEUR_MENU, TEXT_KLEUR, groote, letterGroote, getSpaceFond(), "Exit");
    if (mousePressed) {
      // start
      if (mouseX >= PApplet.parseInt(knopenStartPosX) && mouseX <= PApplet.parseInt(knopenStartPosX) + knopBreete 
        && mouseY >= height / 2 - (height / 10) + knopSpacing * 2 && mouseY <= height / 2 - (height / 10) + knopSpacing * 2 + knopHoogte) {
        setLevel(1);
        setScore(0);
        setZuurstof(0.6f);
        setScenes(kopieScenes);
        setXPosSpeler(13);
        setYPosSpeler(2);
        setStartScherm(false);
        setGamestatus(true);
        setGameGewonnen(false);
        setGameScherm(true);
      } 
      // eixt
      else if (mouseX >= PApplet.parseInt(knopenStartPosX) && mouseX <= PApplet.parseInt(knopenStartPosX) + knopBreete 
        && mouseY >= height / 2 - (height / 10) + knopSpacing * 3 && mouseY <= height / 2 - (height / 10) + knopSpacing * 3 + knopHoogte) {
        //eixt aplicatie
        exit();
      }
      //settings
      else if (mouseX >= PApplet.parseInt(knopenStartPosX) && mouseX <= PApplet.parseInt(knopenStartPosX) + knopBreete 
        && mouseY >= height / 2 - (height / 10) + knopSpacing * 1 && mouseY <= height / 2 - (height / 10) + knopSpacing * 1 + knopHoogte) {
        inMenu = 1;
      }
      // hi score display
      else if (mouseX >= PApplet.parseInt(knopenStartPosX) && mouseX <= PApplet.parseInt(knopenStartPosX) + knopBreete 
        && mouseY >= height / 2 - (height / 10) + knopSpacing * 0 && mouseY <= height / 2 - (height / 10) + knopSpacing * 0 + knopHoogte) {
        inMenu = 2;
      }
    }

    break;
    //settings menu
  case 1:
    tekenScene(groote, getScenes()[level]);
    tekenKnop(width / 2 - knopBreete / 2, height - (height / 4), knopBreete, knopHoogte, KNOP_KLEUR, KLEUR_MENU, TEXT_KLEUR, groote, letterGroote, getSpaceFond(), "Back");

    tekenMenuText(true, width / 2, height / 11 + knopSpacing * 0, groote, 1, getMenuFont(), KLEUR_MENU, "amount of players");
    tekenMenuText(true, width / 2, height / 11 + knopSpacing - (knopSpacing / 6) * 1, groote, .7f, getSpaceFond(), KLEUR_MENU, "" + hoeveelhijdSpelers);
    tekenMenuText(true, width / 2, height / 11 + knopSpacing * 2, groote, 1, getMenuFont(), KLEUR_MENU, "amount of treasure ");
    tekenMenuText(true, width / 2, height / 11 + knopSpacing * 4, groote, 1, getMenuFont(), KLEUR_MENU, "Deathtraps");
    //tekenMenuText(true, width / 2, height / 11 + knopSpacing * 5, groote, .7, getSpaceFond(), KLEUR_MENU, deathtrapText);
    tekenKnop(width / 2 - knopBreete / 2, height / 11 + knopSpacing * 5, knopBreete, knopHoogte, KNOP_KLEUR, KLEUR_MENU, TEXT_KLEUR, groote, letterGroote, getSpaceFond(), deathtrapText);

    //terug
    if (mousePressed) {
      if (mouseX >= width / 2 - knopBreete / 2 && mouseX <= width / 2 - knopBreete / 2 + knopBreete 
        && mouseY >= height - (height / 4) && mouseY <= height - (height / 4) + knopHoogte) {
        inMenu = 0;
      } else if (mouseX >= width / 2 - knopBreete / 2 && mouseX <= width / 2 - knopBreete / 2 + knopBreete 
        && mouseY >= height / 11 + knopSpacing * 5 && mouseY <= height / 11 + knopSpacing * 5 + knopHoogte && deathTrapSchaakelaar == false) {
        setStekels(true);
        deathTrapSchaakelaar = true;
        deathtrapText = "ON";
      } else if (mouseX >= width / 2 - knopBreete / 2 && mouseX <= width / 2 - knopBreete / 2 + knopBreete 
        && mouseY >= height / 11 + knopSpacing * 5 && mouseY <= height / 11 + knopSpacing * 5 + knopHoogte && deathTrapSchaakelaar == true) {
        setStekels(false);
        deathTrapSchaakelaar = false;
        deathtrapText = "OFF";
      }
    }
    break;
    // hiscore
  case 2:
    println("er is helaas nog geen score lijst");
    tekenKnop(width / 2 - knopBreete / 2, height - (height / 4), knopBreete, knopHoogte, KNOP_KLEUR, KLEUR_MENU, TEXT_KLEUR, groote, letterGroote, getSpaceFond(), "Back");
    //terug
    if (mousePressed) {
      if (mouseX >= width / 2 - knopBreete / 2 && mouseX <= width / 2 - knopBreete / 2 + knopBreete 
        && mouseY >= height - (height / 4) && mouseY <= height - (height / 4) + knopHoogte) {
        inMenu = 0;
      }
    }
    break; 
    //error
  default:
    println("*****************************************************************************************************");
    println("Er is een fout geweest! De variable startSchrerm is veranderd zonder door te gaan naar het gamescherm");
    println("startSchrerm is: " + startScherm);
    println("*****************************************************************************************************");
    break;
  }
}

public void tekenMenuText(boolean isCenter, int x, int y, int groote, float factor, PFont font, int kleur, String text ) {
  fill(kleur);
  textFont(font);
  textSize(groote * factor);
  if (isCenter) {
    textAlign(CENTER, TOP);
  } else {
    textAlign(LEFT, TOP);
  }
  text(text, x, y);
}

public void tekenKnop(int x, int y, float breete, float hoogte, int knopKleur, int altKnopKleur, int textKleur, int groote, float factor, PFont font, String text) {
  int afroningHoekken = 5;
  noStroke();
  if (mouseX >= x && mouseX <= x + breete && mouseY >= y && mouseY <= y + hoogte) {
    fill(altKnopKleur);
  } else {
    fill(knopKleur);
  }
  rect(x, y, breete, hoogte, afroningHoekken);
  fill(textKleur);
  textFont(font);
  textSize(groote * factor);
  textAlign(CENTER);
  text(text, x + breete/2, y + hoogte/1.5f);
}
float zuurstofTankWaarde = 0.5f;

public void extraZuurstof(int[][][] level, int huidigLevel, int spelerX, int spelerY, int zuurstof, int leeg){
  if (level[huidigLevel][spelerY][spelerX] == zuurstof) {
    setZuurstof(zuurstofTankWaarde);
    verwijderObject(level, huidigLevel, spelerX, spelerY, zuurstof, leeg);
  }
}

public void verwijderTank(int[][][] level, int huidigLevel, int spelerX, int spelerY, int zuurstof, int leeg) {
  int[][][] temp = level;
  if (level[huidigLevel][spelerY][spelerX] == zuurstof ) {
    temp[huidigLevel][spelerY][spelerX] = leeg;
    setScenes(temp);
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "SpaceRaidersApp" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
