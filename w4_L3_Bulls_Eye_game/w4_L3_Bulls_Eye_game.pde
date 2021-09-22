int scoreR;
int scoreM;
int defaultScore = 0;

int xPosScore = 10;
int yPosScore = 5;


int aantalRingen = 4;
int stapGrooteCircle = 20;
int diameeter;

float bullesEyePos;
float snelhijdBulesEye = 0.5;
float center;

float afstandTussenMuis;

final int ZWART = #000000;
final int WIT   = #ffffff;
final int ROOD  = #ff0000;

void setup() {
  resetScore();
  size(500, 500);
  bullesEyePos = width / 2;
  center = height / 2;
  diameeter = stapGrooteCircle * aantalRingen;
  
  frameRate(60);
}

void draw() {
  berekenMiddenCircle();
  background(ZWART);
  tekenBullsEye(beweegBullsEye(snelhijdBulesEye), center, aantalRingen, stapGrooteCircle);
  tekenScorebord(xPosScore, yPosScore, WIT);
}

void mousePressed() {
  telScore();
}

float beweegBullsEye(float speed) {
  bullesEyePos = bullesEyePos - speed;
  if (bullesEyePos < ( 0 - (diameeter / 2))) {
    bullesEyePos = (width + diameeter / 2) ;
  }
  return bullesEyePos;
}

void tekenBullsEye(float x, float y, int aantal, int stapGroote) {
  int grooteBullsEye = stapGroote * aantal;
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

void tekenCircle(float x, float y, int radius, int kleur) {
  //noStroke();
  fill(kleur);
  circle(x, y, radius);
}

void tekenScorebord(int x, int y, int kleur) {
  fill(kleur);
  textAlign(LEFT, TOP);
  text("Aantal raak: " + scoreR + " aantal mis: " + scoreM, x, y);
}

void berekenMiddenCircle(){
  afstandTussenMuis = dist(bullesEyePos, bullesEyePos, mouseX, mouseY); 
  //in debugger kijken!!
}

void telScore() {
  if (afstandTussenMuis <= diameeter / 2){ //<>//
    scoreR++;
    println("RAAK! :( " + scoreR);
  }else{
   scoreM++;
   println("Mis :( " + scoreM); 
  }
}

void resetScore() {
  scoreR = defaultScore;
  scoreM = defaultScore;
}
