
boolean gamestatus = false;

void gameloop(int aantalSpelers, int groote) {
  tekenScene(groote, getScenes()[getLevel()]);
  tekenSpeler(getSpeler1(), getXPosSpeler() * groote, getYPosSpeler() * groote, groote);
}

void nextLevel() {
  if (getLevel() != getScenes().length && gamestatus == true) {
    setLevel(getLevel() + 1);
  }else{
   setLevel(0); 
  }
}
