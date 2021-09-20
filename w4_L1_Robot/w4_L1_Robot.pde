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

int startposX = 200;
int startposY = 400;

int[][] speelVeld = {
  {wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall}, 
  {wall, air,  wall, air,  air,  air,  air,  air,  air,  air,  air,  air,  air,  goal}, 
  {wall, air,  wall, air,  air,  air,  wall, wall, wall, air,  air,  air,  air,  wall}, 
  {wall, air,  air,  air,  air,  air,  air,  air,  air,  air,  wall, air,  air,  wall},
  {wall, air,  air,  wall, air,  air,  air,  air,  air,  air,  air,  wall, air,  wall}, 
  {wall, air,  air,  air,  wall, air,  air,  air,  air,  air,  air,  wall, air,  wall}, 
  {wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall}, 
};


void setup() {
  frameRate(60);
  size(1400, 700);
  background(ROOD);
  tekenLevel(schaal);
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
    tekenVierkant(xPos, yIndex, groote, kleur);
    xPos = xPos + groote;
  }
}

void tekenVierkant(int x, int y, int groote, int kleur) {
  noStroke();
  fill(kleur);
  rect(x, y, groote, groote);
}



void beweegRobot(){
  
}

void tekenRobot(int x, int y, int groote, int kleur) {
  fill(kleur);
  rect(x, y, groote, groote);
}

void pakObjOp() {
}

void zetObjNeer() {
}
