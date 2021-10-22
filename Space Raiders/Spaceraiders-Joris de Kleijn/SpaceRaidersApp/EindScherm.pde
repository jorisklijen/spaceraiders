int status = 0;
final int KLEUR_GAMEOVER_TEXT = #D6FFFF;
final int KLEUR2_GAMEOVER_TEXT = #D6FFFF;
int eindschremKnopHoogte = 75;
int eindschremKnopBreete = 200;
int spacing = 150;

void setStatus(int s) {
  status = s;
}

void eindLoop(int groote, int level, int score) {
  switch(status) {
  case 0 :
    // gewonnen!!
    tekenScene(groote, getScenes()[level]);
    tekenKnop(width / 2 - eindschremKnopBreete / 2, height - (height / 4), eindschremKnopBreete, eindschremKnopHoogte, KNOP_KLEUR, KLEUR_MENU, TEXT_KLEUR, groote, letterGroote, getSpaceFond(), "Back");
    tekenEindScore(width / 2, height/2 - (height / 4), spacing, score, groote, 0.9, KLEUR_GAMEOVER_TEXT, getMenuFont());
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
    tekenEindScore(width / 2, height/2 - (height / 4), spacing, score, groote, 0.9, KLEUR2_GAMEOVER_TEXT, getMenuFont());
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

void tekenEindScore(int x, int y, int spacing, int score, int groote, float factor, int kleur, PFont font ) {
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
