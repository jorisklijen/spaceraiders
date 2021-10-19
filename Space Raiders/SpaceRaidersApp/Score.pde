void tekenScore(int score, int x, int y, int kleur, PFont font, int groote) {
  fill(kleur);
  textFont(font);
  textSize(groote/2.1);
  textAlign(LEFT, TOP);
  text("Score " + score, x, y );
}
