// Constrain nee niet zinvol

final int ROOD  = #ff0000;
final int GROEN = #48F56E;
final int GRIJS = 58;
final int WIT   = #ffffff;
final int GEEL  = #F6FA44;

int air  = 0;
int wall = 1;
int goal = 2;

int schaal = 100;

int xRobot = 200; 
int yRobot = 300;

boolean isMuur = false;

int[][] speelVeld = {
  {wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall}, 
  {wall, air , wall, air , air , air , air , air , air , air , air , air , air , wall},
  {wall, air , wall, air , air , wall, wall, wall, wall, wall, air , wall, wall, wall},
  {wall, air , air , air , air , wall, air , air , air , air , air , air , air , wall},
  {wall, air , wall, wall, air , wall, wall, wall, wall, air , wall, wall, air , wall},
  {wall, air , air , wall, air , air , air , air , air , air , air , wall, air , wall},
  {wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, goal, wall},
};


void setup() {
  frameRate(60);
  size(1400, 700);
  background(ROOD);
  tekenLevel(schaal);
}

void draw(){
  tekenRobot(xRobot, yRobot, schaal, GROEN);
}

void keyPressed(){
  beweegRobot();
}

void tekenLevel(int groote) {
  int yOffSet = 0;
  for (int i = 0; i < speelVeld.length; i++) {
    tekenLevelRij(speelVeld[i], yOffSet, groote);
    yOffSet = yOffSet + groote;
  }
}

void tekenLevelRij(int []veld, int yIndex, int groote) {
  int kleur = #000000;
  int xPos = 0;
  for (int i = 0; i < veld.length; i++) {
    if (veld[i] == 1) {
      kleur = GRIJS;
    } else if (veld[i] == 2) {
      kleur = GEEL;
    } else {
      kleur = WIT;
    }
    tekenVierkantLevel(xPos, yIndex, groote, kleur);
    xPos = xPos + groote;
  }
}

void tekenVierkantLevel(int x, int y, int groote, int kleur) {
  noStroke();
  fill(kleur);
  rect(x, y, groote, groote);
}

void beweegRobot(){
  for(int rij = 0; rij < speelVeld.length; rij++){
    for(int colom = 0; colom < speelVeld[rij].length; colom++){
      if (speelVeld[rij][colom] != wall){ //<>//
        if ((rij * schaal != yRobot )&& keyCode == UP){
          yRobot -= schaal;
        } //<>//
      }
    }
  }
  
  
  switch (keyCode) {
    case(UP):
   // yRobot -= schaal;
    break;
    case(DOWN):
    yRobot += schaal;
    break;
    case(LEFT):
    xRobot -= schaal;
    break;
    case(RIGHT):
    xRobot += schaal;
    break;
  }
}

void tekenRobot(int x, int y, int groote, int kleur) {
  tekenLevel(schaal);
  fill(kleur);
  rect(x, y, groote, groote);
  //test rect van waar muurzen zitten visual
  fill(255, 0, 0 , 100);
  rect(x, y + groote, groote, groote);
  rect(x, y - groote, groote, groote);
  rect(x + groote, y, groote, groote);
  rect(x - groote, y, groote, groote);
}

void pakObjOp() {
}

void zetObjNeer() {
}
