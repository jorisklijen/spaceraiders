// --punten---------------------------------------------

// --achtergond-----------------------------------------
PImage getAfbeeldingAchtergrond() {
  return background;
}
// --time-----------------------------------------------
int getTime() {
  return timeInSec;
}
boolean getTimesUp() {
  return timesUp;
}
// --Gameschermen--------------------------------------
boolean getGameScherm() {
  return gameScherm;
}
boolean getEindScherm() {
  return eindScherm;
}
void setGameScherm(boolean status) {
  gameScherm = status;
}
void setEindScherm(boolean status) {
  eindScherm = status;
}
// -- main code---------------------------------------

void beginGame() {
  tekenAchtergrond(getAfbeeldingAchtergrond());
  //drawCompleteTimer();
  spawnEnnemy();
}
