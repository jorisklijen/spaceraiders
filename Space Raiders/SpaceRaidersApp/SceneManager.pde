boolean startScherm = false;
boolean gameScherm = true;
boolean eindScherm = false;
boolean hiscoreScherm = false;

int level = 1;
int schaal = 100;
int score = 0;

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
    // level 1 index 1
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR17(), GET_MUUR0_(), GET_MUUR21(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR21(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR21(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR0_(), GET_MUUR16()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_MUUR__(), GET_MUUR12(), GET_MUUR__(), GET_MUUR__(), GET_MUUR9_(), GET_MUUR__(), GET_MUUR__(), GET_MUUR9_(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_RANDOM(), GET_MUUR9_(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR__(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR__(), GET_LEEG_1(), GET_RANDOM(), GET_SPAWN_(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_LEEG_1(), GET_MUUR__(), GET_LEEG_1(), GET_RANDOM(), GET_LEEG_1(), GET_LEEG_1(), GET_RANDOM(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR45(), GET_LEEG_1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_KNOP__(), GET_LEEG_1(), GET_MUUR__(), GET_RANDOM(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR45(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR5_(), GET_MUUR4_(), GET_RANDOM(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR18(), GET_MUUR8_(), GET_Z_TANK(), GET_MUUR__(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR10(), GET_MUUR31(), GET_MUUR32(), GET_MUUR8_(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR1_()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_MUUR__(), GET_LEEG_1(), GET_PORTAL(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_MUUR__(), GET_LEEG_1(), GET_MUUR5_(), GET_MUUR15()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR2_(), GET_LEEG_1(), GET_RANDOM(), GET_MUUR5_(), GET_MUUR4_(), GET_LEEG_1(), GET_RANDOM(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_LEEG_1(), GET_MUUR1_(), GET_LEEG_0()}, 
    {GET_LEEG_0(), GET_LEEG_0(), GET_MUUR14(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR15(), GET_MUUR14(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR3_(), GET_MUUR15(), GET_LEEG_0()}, 
  }, 
  {
    // level 2 index 2
    {LEEG_0, LEEG_0, LEEG_0, LEEG_0, MUUR17, MUUR0_, MUUR0_, MUUR0_, MUUR0_, MUUR0_, MUUR16, MUUR17, MUUR0_, MUUR0_, MUUR16}, 
    {LEEG_0, LEEG_0, LEEG_0, MUUR17, MUUR7_, MUUR__, MUUR__, MUUR__, MUUR__, MUUR__, MUUR6_, MUUR7_, MUUR__, MUUR__, MUUR1_}, 
    {LEEG_0, LEEG_0, LEEG_0, MUUR2_, MUUR__, LEEG_1, LEEG_1, PORTAL, LEEG_1, LEEG_1, MUUR__, MUUR__, LEEG_1, LEEG_1, MUUR1_}, 
    {LEEG_0, LEEG_0, MUUR17, MUUR7_, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, MUUR1_}, 
    {LEEG_0, LEEG_0, MUUR2_, MUUR__, LEEG_1, LEEG_1, LEEG_1, MUUR10, MUUR8_, LEEG_1, MUUR10, MUUR43, LEEG_1, LEEG_1, MUUR1_}, 
    {LEEG_0, LEEG_0, MUUR2_, LEEG_1, LEEG_1, LEEG_1, LEEG_1, MUUR__, MUUR__, LEEG_1, MUUR__, MUUR9_, MUNT__, MUUR5_, MUUR15}, 
    {LEEG_0, LEEG_0, MUUR2_, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, KNOP__, MUUR__, LEEG_1, MUUR1_, LEEG_0}, 
    {LEEG_0, LEEG_0, MUUR2_, LEEG_1, MUUR5_, MUUR4_, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, MUUR1_, LEEG_0}, 
    {LEEG_0, LEEG_0, MUUR2_, LEEG_1, MUUR1_, MUUR2_, LEEG_1, LEEG_1, LEEG_1, LEEG_1, MUUR5_, MUUR3_, MUUR3_, MUUR15, LEEG_0}, 
    {LEEG_0, LEEG_0, MUUR14, MUUR3_, MUUR15, MUUR14, MUUR3_, MUUR3_, MUUR3_, MUUR3_, MUUR15, LEEG_0, LEEG_0, LEEG_0, LEEG_0}, 
  }
};

int[][][] getScenes() {
  return scenes;
}

int getLevel() {
  return level;
}

boolean getGameScherm() {
  return gameScherm;
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

void sethiscoreScherm(boolean resultaat) {
  hiscoreScherm = resultaat ;
}

void setEindScherm(boolean resultaat) {
  eindScherm = resultaat ;
}

void laadScene() {
  if (startScherm) {
  } else if (gameScherm) {
    gameloop(1, schaal, 4);
  } else if (eindScherm) {
  }
}
