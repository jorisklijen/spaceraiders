final int KLEUR_MENU = #D6FFFF;
final int KLEUR_BLOED_TEXT = #8f2023;
final int TEXT_KLEUR = #07080b;
final int KNOP_KLEUR = #454c5e;
float knopenStartPosX = width * 2.4;
int knopSpacing = 100;
int knopHoogte = 75, knopBreete = 200;
float letterGroote = 0.3;
int inMenu = 0;
String deathtrapText = "ON";
boolean deathTrapSchaakelaar = true;

int[][][] kopieScenes = getScenes();

void startLoop(boolean startScherm, int groote, int level, int aantalSchatten, int hoeveelhijdSpelers) {

  switch (inMenu) {
  case 0:
    tekenScene(groote, getScenes()[level]);

    //main logo
    tekenMenuText(true, width / 2, height / 12, groote, 2.8, getMenuFont(), KLEUR_MENU, "SPACE RAIDERS");
    //suptext
    tekenMenuText(true, width /2 + (width / 11), height / 2 - ((height / 10) * 2), groote, 0.8, getBloedFont(), KLEUR_BLOED_TEXT, "Escape The Stasion" );
    //knoppen
    tekenKnop(int(knopenStartPosX), height / 2 - (height / 10) + knopSpacing * 0, knopBreete, knopHoogte, KNOP_KLEUR, KLEUR_MENU, TEXT_KLEUR, groote, letterGroote, getSpaceFond(), "Hi Score");
    tekenKnop(int(knopenStartPosX), height / 2 - (height / 10) + knopSpacing * 1, knopBreete, knopHoogte, KNOP_KLEUR, KLEUR_MENU, TEXT_KLEUR, groote, letterGroote, getSpaceFond(), "Settings");
    tekenKnop(int(knopenStartPosX), height / 2 - (height / 10) + knopSpacing * 2, knopBreete, knopHoogte, KNOP_KLEUR, KLEUR_MENU, TEXT_KLEUR, groote, letterGroote, getSpaceFond(), "Start");
    tekenKnop(int(knopenStartPosX), height / 2 - (height / 10) + knopSpacing * 3, knopBreete, knopHoogte, KNOP_KLEUR, KLEUR_MENU, TEXT_KLEUR, groote, letterGroote, getSpaceFond(), "Exit");
    if (mousePressed) {
      // start
      if (mouseX >= int(knopenStartPosX) && mouseX <= int(knopenStartPosX) + knopBreete 
        && mouseY >= height / 2 - (height / 10) + knopSpacing * 2 && mouseY <= height / 2 - (height / 10) + knopSpacing * 2 + knopHoogte) {
        setLevel(1);
        setScore(0);
        setScenes(kopieScenes);
        setXPosSpeler(13);
        setYPosSpeler(2);
        setStartScherm(false);
        setGamestatus(true);
        setGameGewonnen(false);
        setGameScherm(true);
      } 
      // eixt
      else if (mouseX >= int(knopenStartPosX) && mouseX <= int(knopenStartPosX) + knopBreete 
        && mouseY >= height / 2 - (height / 10) + knopSpacing * 3 && mouseY <= height / 2 - (height / 10) + knopSpacing * 3 + knopHoogte) {
        //eixt aplicatie
        exit();
      }
      //settings
      else if (mouseX >= int(knopenStartPosX) && mouseX <= int(knopenStartPosX) + knopBreete 
        && mouseY >= height / 2 - (height / 10) + knopSpacing * 1 && mouseY <= height / 2 - (height / 10) + knopSpacing * 1 + knopHoogte) {
        inMenu = 1;
      }
      // hi score display
      else if (mouseX >= int(knopenStartPosX) && mouseX <= int(knopenStartPosX) + knopBreete 
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
    tekenMenuText(true, width / 2, height / 11 + knopSpacing - (knopSpacing / 6) * 1, groote, .7, getSpaceFond(), KLEUR_MENU, "" + hoeveelhijdSpelers);
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

void tekenMenuText(boolean isCenter, int x, int y, int groote, float factor, PFont font, int kleur, String text ) {
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

void tekenKnop(int x, int y, float breete, float hoogte, int knopKleur, int altKnopKleur, int textKleur, int groote, float factor, PFont font, String text) {
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
  text(text, x + breete/2, y + hoogte/1.5);
}
