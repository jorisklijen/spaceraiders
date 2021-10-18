boolean gamestatus = false;

final int KLEUR_ZUURSTOF_ACHTERGROND = #444246;
final int KLEUR_ZUURSTOF = #9bb4ed;
final int KLEUR_TEXT = #9bb4ed;

void gameloop(int groote) {
  zuurstofAfname();
  tekenScene(groote, getScenes()[getLevel()]);
  tekenSpeler(getSpeler1(), getXPosSpeler() * groote, getYPosSpeler() * groote, groote, KLEUR_ZUURSTOF_ACHTERGROND, KLEUR_ZUURSTOF, getZuurstof());
  beweegSpeler(getScenes()[getLevel()]);
  tekenScore(getScore(), 20, 20, KLEUR_TEXT, getSpaceFond(), groote);
}

void nextLevel() {
  if (getLevel() != getScenes().length && gamestatus == true) {
    setLevel(getLevel() + 1);
    setZuurstof(0.5);
  } else {
    setLevel(0);
  }
}
