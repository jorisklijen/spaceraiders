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
    {GET_LEEG_0(), GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_MUUR__(), GET_LEEG_1(), GET_LEEG_1(), GET_PORTL0(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR__(), GET_MUUR__(), GET_RANDOM(), GET_LEEG_1(), GET_MUUR1_()}, 
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

int[][][] getScenes() {
  return scenes;
}

void setScenes(int[][][] niewScene) {
  scenes = niewScene;
}

int getScore() {
  return score;
}

void setScore(int aantal) {
  score = aantal;
}

int getSchaal() {
  return schaal;
}

int[] getSchatten() {
  return shatten;
}

boolean getStekels() {
  return stekels;
}

void setStekels(boolean stekelStatus) {
  stekels = stekelStatus;
}

boolean getGameScherm() {
  return gameScherm;
}

boolean getStartSchrem() {
  return startScherm;
}

int getLevel() {
  return level;
}

void setLevel(int huidiglevel) {
  level = huidiglevel;
}

void setGameScherm(boolean resultaat) {
  gameScherm = resultaat ;
}

void setStartScherm(boolean resultaat) {
  startScherm = resultaat ;
}

void setEindScherm(boolean resultaat) {
  eindScherm = resultaat ;
}

void laadScene() {
  if (startScherm) {
    startLoop(startScherm, schaal, level, aantalSchatten, aantalSpelers);
  } else if (gameScherm) {
    gameloop(schaal, level, aantalSchatten, score);
  } else if (eindScherm) {
    eindLoop(schaal, level, score);
  }
}
