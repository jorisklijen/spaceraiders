int scoreR;
int scoreM;
int defaultScore = 0;

int xPosScore = 10;
int yPosScore = 5;
float textGroote = 0.5;

int schaal = 500;

int aantalRingen = 5;
int stapGrooteCircle = 25;
float diameeter = 0;
float straal = 0;

float bullesEyePos;
float snelhijdBulesEye = 0.5;
float center;

float afstandTussenMuis = 0;

boolean niewSpel = false;

final int ZWART = #000000;
final int WIT   = #ffffff;
final int ROOD  = #ff0000;

void setup() {
  resetScore();
  size(500, 500);
  bullesEyePos = width / 2;
  center = height / 2;
  diameeter = stapGrooteCircle * aantalRingen;
  straal = diameeter / 2 * height / schaal;
  surface.setTitle(" -Prijs schietten-");
  surface.setResizable(true);
  frameRate(144);
}

void draw() {
  gameStatus();
}

void mousePressed() {
  telScore();
  startNiewSpel();
}



void gameStatus() {
  if (niewSpel) {
    berekenMiddenCircle();
    background(ZWART);
    tekenBullsEye(beweegBullsEye(snelhijdBulesEye), center, aantalRingen, stapGrooteCircle);
    tekenScorebord(xPosScore, yPosScore, WIT, textGroote);
  }else{
    background(ZWART);
    tekenKnop(knopPosX, knopPosY, knopGrooteX, knopGrooteY);
    
  }
}

void berekenMiddenCircle() {
  float bewegendePosX = beweegBullsEye(snelhijdBulesEye);
  afstandTussenMuis = dist(bewegendePosX, center, mouseX, mouseY);
}

float beweegBullsEye(float speed) {
  straal = diameeter / 2 * height / schaal;
  bullesEyePos = bullesEyePos - speed;
  if (bullesEyePos <  0 - straal) {
    bullesEyePos = (width + straal);
    center = height / 2;
  }
  return bullesEyePos;
}
 //<>//
void tekenBullsEye(float x, float y, float aantal, float stapGroote) {
  stapGroote = stapGroote * height / schaal;
  float grooteBullsEye = stapGroote * aantal;
  for (int i = 0; i < aantal; i++) {
    if (i % 2 == 0) {
      tekenCircle(x, y, grooteBullsEye, ROOD);
      grooteBullsEye = grooteBullsEye - stapGroote;
    } else if (i % 2 == 1) {
      tekenCircle(x, y, grooteBullsEye, WIT);
      grooteBullsEye = grooteBullsEye - stapGroote;
    }
  }
}

void tekenCircle(float x, float y, float radius, int kleur) {
  noStroke();
  fill(kleur);
  circle(x, y, radius);
}

void tekenScorebord(int x, int y, int kleur, float grooteText) {
  fill(kleur);
  stroke(5);
  textSize(grooteText * (height / 10));
  textAlign(LEFT, TOP);
  text("Aantal raak: " + scoreR + " aantal mis: " + scoreM, x, y);
}

void telScore() {
  if (niewSpel == true) {
    if (afstandTussenMuis < straal) {
      scoreR++;
      //println("RAAK! :) " + scoreR);
    } else if (afstandTussenMuis >= straal) {
      scoreM++;
      //println("Mis :( " + scoreM);
    }
  }
}

void resetScore() {
  scoreR = defaultScore;
  scoreM = defaultScore;
}

void startNiewSpel() {
  if (niewSpel == false && muisOverKnop(knopPosX, knopPosY, knopGrooteX, knopGrooteY) == true) {
    niewSpel = true;
    resetScore();
  }
}

int knopGrooteX = 100;
int knopGrooteY = 50;
int knopPosX = 0;
int knopPosY = 0;

int knopKleur = #16F566; 

String startStopText = "error" ;

void tekenKnop(int x, int y, int breete, int hoogte){
  fill(knopKleur);
  rect(x, y, breete, hoogte);
}

boolean muisOverKnop(int x, int y, int breete, int hoogte) {
  if ((mouseX >= x && mouseX <= x + breete) && (mouseY >= y && mouseY <= y + hoogte)) {
    knopKleur = #11D155;
    return true;
  } else {
    knopKleur = #16F566;
    return false;
  }
}
