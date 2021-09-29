//mario level
final int LICHTBLOUW = #6185f8;
int scale = 20;

PImage[][]level;

void setup() {
  size(800, 400);
  
  level = new PImage[3][3];
  
  loadImg();
  tekenLevel(scale);
}

void tekenLevel(int groote) {
  background(LICHTBLOUW);
  for (int colom = 0; colom < level.length; colom++) {
    for (int rij = 0; rij < level[colom].length; rij++) {
      tekenImg(groote * rij, groote * colom, groote, level[colom][rij]);
    }
  }
}

void tekenImg(int x, int y, int groote, PImage afbeelding) {
  image(afbeelding, x, y, groote, groote);
  println("Zonnet " + afbeelding + " binnen gekregen");
  println("***********************");
}

void loadImg() {
  level[0][0] = loadImage("test.png");
  level[0][1] = loadImage("test.png");
  level[0][2] = loadImage("test.png");
  //
  level[1][0] = loadImage("test.png");
  level[1][1] = loadImage("test.png");
  level[1][2] = loadImage("test.png");
  //
  level[2][0] = loadImage("test.png");
  level[2][1] = loadImage("test.png");
  level[2][2] = loadImage("test.png"); //<>//
}
