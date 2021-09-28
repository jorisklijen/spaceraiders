//mario

int scale = 50;

final int LICHTBLOUW = #6185f8;

PImage imgTest;

PImage[][] level = {
  {imgTest, imgTest, imgTest},
  {imgTest, imgTest, imgTest},
  {imgTest, imgTest, imgTest},
  {imgTest, imgTest, imgTest},
};

void setup(){
  size(150,200);
  
  laadAfbeeldingen();
  tekenLevel(scale);
}

void laadAfbeeldingen(){
  imgTest = loadImage("test.png");
}

void tekenLevel(int groote){
  int xPos = 0;
  int yPos = 0;
  for (int colom = 0; colom < level.length; colom++){
    for (int rij = 0; rij < level[colom].length; rij++){
      tekenBlok(xPos + groote * rij, yPos + groote * colom, groote, level[colom][rij]);
    }
  }
}


void tekenBlok(int x, int y, int groote, PImage afbeelding){
  //image(afbeelding, x, y, groote, groote);
  print("a ");
}
