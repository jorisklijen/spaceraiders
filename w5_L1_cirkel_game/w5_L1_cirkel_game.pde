// Een array van int[6][2] met coördinaten van cirkels
int[][] cirkels = { {10, 15}, {100, 130}, {77, 43}, {30, 145}, {185, 17}, {99, 76} };

final int DIAMETER = 20;
final int GEEL = #FFFF00;
final int ROOD = #FF0000;

int straal = 0;

void setup() {
  straal = DIAMETER / 2;
  size(200, 200);
}

void draw() {
  background(#000000);
  tekenCirkels(cirkels, DIAMETER);
}
// Hieronder jouw code
void mousePressed() {
  printCoordinatenInConsole();
}

void printCoordinatenInConsole() {
  for (int index = 0; index < cirkels.length; index++) {
    if (dist(cirkels[index][0], cirkels[index][1], mouseX, mouseY) <= straal) {
      if (mousePressed) {
        println("geklikt op cirkel met index: " + index);
        println("bijbehorende coordinaten zijn: (" + cirkels[index][0] + "," + cirkels[index][1] + ")");
        println("********************");
      }
    }
  }
}

void tekenCirkels(int[][] cirkels, int diameeter) {
  for (int index = 0; index < cirkels.length; index++) {
    if (dist(cirkels[index][0], cirkels[index][1], mouseX, mouseY) <= straal) {
      tekenCirkel(cirkels[index][0], cirkels[index][1], diameeter, ROOD);
    } else {
      tekenCirkel(cirkels[index][0], cirkels[index][1], diameeter, GEEL);
    }
  }
}

void tekenCirkel(int x, int y, int diameeter, int kleur) {
  fill(kleur);
  circle(x, y, diameeter);
}
