// Constrain nee niet zinvol //<>// //<>//

final int ROOD  = #ff0000;
final int GROEN = #48F56E;
final int GRIJS = 58;
final int WIT   = #ffffff;
final int GEEL  = #F6FA44;

int air  = 0;
int wall = 1;
int goal = 2;

int schaal = 50;

int xRobot = 5 * schaal; 
int yRobot = 3 * schaal;

void setup() {
  frameRate(60);
  size(800, 450);
  background(ROOD);
  tekenLevel(schaal);
}

void draw() {
  tekenRobot(xRobot, yRobot, schaal, GROEN);
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
    if (veld[i] == wall) {
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

int[][] speelVeld = {
  {wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall}, 
  {wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall}, 
  {wall, wall, air , wall, air , air , air , air , air , air , air , air , air , air , wall, wall}, 
  {wall, wall, air , wall, air , air , wall, wall, wall, wall, wall, air , wall, wall, wall, wall}, 
  {wall, wall, air , air , air  , air, wall, air , air , air , air , air , air , air , wall, wall}, 
  {wall, wall, air , wall, wall, air , wall, wall, wall, wall, air , wall, wall, air , wall, wall}, 
  {wall, wall, air , air , wall, air , air , air , air , air , air , air , wall, air , wall, wall}, 
  {wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall}, 
  {wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall, wall}, 
};

void beweegRobot() {
  if (yRobot > schaal && keyCode == UP &&
    speelVeld[(yRobot / schaal) - 1][xRobot / schaal] != wall ) {
    yRobot -= schaal;
  } else if (yRobot > schaal && keyCode == DOWN &&
    speelVeld[(yRobot / schaal) + 1][xRobot / schaal] != wall ) {
    yRobot += schaal;
  } else if (xRobot > schaal && keyCode == LEFT &&
    speelVeld[yRobot / schaal][(xRobot / schaal) - 1] != wall ) {
    xRobot -= schaal;
  } else if (xRobot > schaal && keyCode == RIGHT &&
    speelVeld[yRobot / schaal][(xRobot / schaal) + 1] != wall ) {
    xRobot += schaal;
  }
}

void keyPressed() {
  beweegRobot();
}


void tekenRobot(int x, int y, int groote, int kleur) {
  tekenLevel(schaal);
  fill(kleur);
  rect(x, y, groote, groote);
}

void pakObjOp() {
}

void zetObjNeer() {
}
