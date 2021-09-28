PImage imgMeme;

int xPos = 0, yPos = 0, breete = 500, hoogte = 500;

void setup(){
  size(500,500);
  laad();
  tekenImg(xPos, yPos, breete, hoogte);
}

void laad(){
  imgMeme = loadImage("download.jpg");
} 

void tekenImg(int x, int y, int b, int h){
  image(imgMeme, x, y, b, h);
}
