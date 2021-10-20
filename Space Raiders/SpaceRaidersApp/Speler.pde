int spelerSnelheid = 1; //<>//
int xPosSpeler = 13;
int yPosSpeler = 2;
boolean spelerLevend = true;
float zuurstof = 0.5f;
float zuurstofVerbruik = 0.0025f;
boolean beweegt = false;
int getXPosSpeler() {
  return xPosSpeler;
}
int getYPosSpeler() {
  return yPosSpeler;
}
void setXPosSpeler(int pos) {
  xPosSpeler = pos;
}
void setYPosSpeler(int pos) {
  yPosSpeler = pos;
}
void setZuurstof(float hoeveelhijd) {
  zuurstof = hoeveelhijd;
}

float getZuurstof() {
  return zuurstof;
}

boolean getSpelerLevend() {
  return spelerLevend;
}
void beweegSpeler(int[][] level) {


  if (keyPressed) {
  } else { 

    //************************************************
    //||  oude code bewegen nog een bug dat         || 
    //||  er meerdere inputs gegeven kunnen worden  ||
    //||   -joris de kleijn 20/10/2021              ||
    //************************************************
    //if (key == 'p') {
    //  println("deze zorgt er voor dat er geen prio is bij het beweegen");
    //} else if (key == 'w' && level[yPosSpeler - 1][xPosSpeler] > 0 && beweegt == false) {
    //  beweegt = true;
    //  yPosSpeler = yPosSpeler - spelerSnelheid;
    //  if(level[yPosSpeler - 1][xPosSpeler] <= 0){
    //    beweegt = false;
    //  }
    //} else if (key == 's' && level[yPosSpeler + 1][xPosSpeler] > 0 && beweegt == false) {
    //  beweegt = true;
    //  yPosSpeler = yPosSpeler + spelerSnelheid;
    //  if(level[yPosSpeler + 1][xPosSpeler] <= 0){
    //    beweegt = false;
    //  }
    //} else if (key == 'a' && level[yPosSpeler][xPosSpeler - 1] > 0 && beweegt == false) {
    //  beweegt = true;
    //  xPosSpeler = xPosSpeler - spelerSnelheid;
    //  if(level[yPosSpeler][xPosSpeler - 1] <= 0){
    //    beweegt = false;
    //  }
    //} else if (key == 'd' && level[yPosSpeler][xPosSpeler + 1] > 0 && beweegt == false) {
    //  beweegt = true;
    //  xPosSpeler = xPosSpeler + spelerSnelheid;
    //  if(level[yPosSpeler][xPosSpeler + 1] <= 0){
    //    beweegt = false;
    //  }
    //}

    switch (key) {
    case 'w':
      if (level[yPosSpeler - 1][xPosSpeler] > 0 ) {
        yPosSpeler = yPosSpeler - spelerSnelheid;
      }
      break;
    case 's':
      if (level[yPosSpeler + 1][xPosSpeler] > 0 ) {
        beweegt = true;
        yPosSpeler = yPosSpeler + spelerSnelheid;
      } else {
        beweegt = false;
      }
      break;
    case 'a':
      if (level[yPosSpeler][xPosSpeler - 1] > 0 ) {
        beweegt = true;
        xPosSpeler = xPosSpeler - spelerSnelheid;
      } else {
        beweegt = false;
      }
      break;
    case 'd':
      if (level[yPosSpeler][xPosSpeler + 1] > 0 ) {
        xPosSpeler = xPosSpeler + spelerSnelheid;
      }
      break;
    default: 
      if (key == 'W' || key == 'S' || key == 'A' || key =='D') {
        println("capslock staat aan! " + key);
      }
      break;
    }
  }
}

void zuurstofAfname() {
  if (spelerLevend) {
    zuurstof = constrain(zuurstof - zuurstofVerbruik, 0, 0.5);
  }
  //println(zuurstof);
}

void tekenSpeler(PImage speler, int x, int y, int groote, int kleurBg, int kleurO2, float zuurstofWaarde) {
  tekenZuurstofBalk(x + groote / 4, y + groote / 12, kleurO2, kleurBg, zuurstofWaarde, 0.15f, 0.5f, groote);
  image(speler, x, y, groote, groote);
}
void tekenZuurstofBalk(int x, int y, int kleur, int kleurBg, float vulwaarde, float hoogte, float breete, int groote) {
  int afrondingBalk = 3;
  noStroke();
  //achtergrond zuurstof
  fill(kleurBg);
  rect(x, y, breete * groote, hoogte * groote, afrondingBalk);
  //zuurstof zelf
  fill(kleur);
  rect(x, y, constrain(vulwaarde, 0, breete) * groote, hoogte * groote, afrondingBalk);
}
