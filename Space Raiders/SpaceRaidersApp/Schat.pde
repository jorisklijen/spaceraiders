int muntWaarde = 10;
int diamantWaarde = 50;

void telSchat(int[][] level, int spelerX, int spelerY, int munt, int diamant, int score) {
  if (level[spelerY][spelerX] == munt) {
    score = score + muntWaarde;
    
  }
  else if (level[spelerY][spelerX] == diamant){
    score = score + diamantWaarde;
  }
  setScore(score);
  //  }
  //}
}
