float zuurstofTankWaarde = 0.5f;

void extraZuurstof(int[][][] level, int huidigLevel, int spelerX, int spelerY, int zuurstof, int leeg){
  if (level[huidigLevel][spelerY][spelerX] == zuurstof) {
    setZuurstof(zuurstofTankWaarde);
    verwijderObject(level, huidigLevel, spelerX, spelerY, zuurstof, leeg);
  }
}

void verwijderTank(int[][][] level, int huidigLevel, int spelerX, int spelerY, int zuurstof, int leeg) {
  int[][][] temp = level;
  if (level[huidigLevel][spelerY][spelerX] == zuurstof ) {
    temp[huidigLevel][spelerY][spelerX] = leeg;
    setScenes(temp);
  }
}
