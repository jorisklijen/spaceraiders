void drukOpKnop(int[][][] level, int huidigLevel, int spelerX, int spelerY, int knop, int portaalVerborgen, int portaal, int leeg) {
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

void verwijderObject(int[][][] level, int huidigLevel, int spelerX, int spelerY, int object, int leeg) {
  int[][][] temp = level;
  if (level[huidigLevel][spelerY][spelerX] == object) {
    temp[huidigLevel][spelerY][spelerX] = leeg;
    setScenes(temp);
  }
}
