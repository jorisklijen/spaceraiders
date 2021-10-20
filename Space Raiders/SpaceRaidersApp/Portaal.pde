

void portaalTeleportatie(int level[][], int spelerX, int spelerY, int portaal, int startposX, int startposY) {
  if (level[spelerY][spelerX] == portaal) {
    println();
    nextLevel(getLevel(), startposX, startposY);
  }
}

void nextLevel(int level, int x, int y) {
  if (level != getScenes().length -1 && gamestatus == true) {
    setXPosSpeler(x);
    setYPosSpeler(y);
    setLevel(level + 1);
    setZuurstof(0.6);
  } else {
    
    setLevel(0);
  }
}
