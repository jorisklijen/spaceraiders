boolean startScherm = false;
boolean gameScherm  = true;
boolean eindScherm  = false; 

float snelheid = 1.0;
int score = 0;

void loadScene() {
  if (startScherm) {
  } else if (gameScherm) {
    beginGame();
  } else if (eindScherm) {
  }
}
