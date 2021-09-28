//mario level
final int LICHTBLOUW = #6185f8;
int scale = 20;

PImage imgTEST;
PImage imgLEEG;
PImage imgGROND;
PImage imgBRICK;
PImage imgMUNT;
PImage imgDOOS;
PImage imgBLOEM;
PImage imgPADDENSTOEL;
PImage imgSTER;
PImage imgL_B_PIJP;
PImage imgR_B_PIJP;
PImage imgL_PIJP;
PImage imgR_PIJP;
PImage imgBLOCK;
PImage imgWolk1;
PImage imgWolk2;
PImage imgWolk3;
PImage imgWolk4;
PImage imgWolk5;
PImage imgWolk6;

PImage[][]level = {{imgLEEG, imgLEEG, imgLEEG}, {imgLEEG, imgLEEG, imgLEEG}, {imgLEEG, imgTEST, imgLEEG}};

void setup() {
  size(800, 400);
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
  //image(afbeelding, x, y, groote, groote);
  println("Zonnet " + afbeelding + " binnen gekregen");
  println("***********************");
}

void loadImg() {
  imgGROND = loadImage("test.png"); 
  imgBRICK = loadImage("test.png");
  imgMUNT = loadImage("test.png");
  imgDOOS = loadImage("test.png");
  imgBLOEM = loadImage("test.png");
  imgPADDENSTOEL = loadImage("test.png");
  imgSTER = loadImage("test.png");
  imgL_B_PIJP = loadImage("test.png");
  imgR_B_PIJP = loadImage("test.png");
  imgL_PIJP = loadImage("test.png");
  imgR_PIJP = loadImage("test.png");
  imgBLOCK = loadImage("test.png");
  imgWolk1 = loadImage("test.png"); 
  imgWolk2 = loadImage("test.png");
  imgWolk3 = loadImage("test.png");
  imgWolk4 = loadImage("test.png"); 
  imgWolk5 = loadImage("test.png");
  imgWolk6 = loadImage("test.png");
}
