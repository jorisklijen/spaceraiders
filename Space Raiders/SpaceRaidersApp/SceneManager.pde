boolean startScherm = true;
boolean gameScherm = false;
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
    {GET_LEEG_0(), GET_LEEG_0(), MUUR17, MUUR0_, MUUR21, MUUR0_, MUUR0_, MUUR21, MUUR0_, MUUR0_, MUUR21, MUUR0_, MUUR0_, MUUR0_, MUUR16}, 
    {GET_LEEG_0(), GET_LEEG_0(), MUUR2_, MUUR__, MUUR12, MUUR__, MUUR__, MUUR9_, MUUR__, MUUR__, MUUR9_, MUUR__, MUUR__, MUUR__, MUUR1_}, 
    {GET_LEEG_0(), GET_LEEG_0(), MUUR2_, DIAMAN, MUUR9_, LEEG_1, LEEG_1, MUUR__, LEEG_1, LEEG_1, MUUR__, LEEG_1, MUNT__, LEEG_1, MUUR1_}, 
    {GET_LEEG_0(), GET_LEEG_0(), MUUR2_, LEEG_1, MUUR__, LEEG_1, LEEG_1, LEEG_1, LEEG_1, DIAMAN, LEEG_1, LEEG_1, MUUR45, LEEG_1, MUUR1_}, 
    {GET_LEEG_0(), GET_LEEG_0(), MUUR2_, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, KNOP__, LEEG_1, MUUR__, LEEG_1, MUUR1_}, 
    {GET_LEEG_0(), GET_LEEG_0(), MUUR2_, LEEG_1, LEEG_1, MUUR45, LEEG_1, LEEG_1, LEEG_1, MUUR5_, MUUR4_, B_Raid, LEEG_1, LEEG_1, MUUR1_}, 
    {GET_LEEG_0(), GET_LEEG_0(), MUUR18, MUUR8_, Z_TANK, MUUR__, LEEG_1, LEEG_1, MUUR10, MUUR31, MUUR32, MUUR8_, LEEG_1, LEEG_1, MUUR1_}, 
    {GET_LEEG_0(), GET_LEEG_0(), MUUR2_, MUUR__, LEEG_1, PORTAL, LEEG_1, LEEG_1, MUUR__, MUUR__, MUUR__, MUUR__, LEEG_1, MUUR5_, MUUR15}, 
    {GET_LEEG_0(), GET_LEEG_0(), MUUR2_, LEEG_1, B_Raid, MUUR5_, MUUR4_, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, LEEG_1, MUUR1_, LEEG_0}, 
    {GET_LEEG_0(), GET_LEEG_0(), MUUR14, MUUR3_, MUUR3_, MUUR15, MUUR14, MUUR3_, MUUR3_, MUUR3_, MUUR3_, MUUR3_, MUUR3_, MUUR15, LEEG_0}, 
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

void laadScene() {
  if (startScherm) {
  } else if (gameScherm) {
  } else if (eindScherm) {
  }
}
