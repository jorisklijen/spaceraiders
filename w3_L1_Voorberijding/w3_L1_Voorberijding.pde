void setup() {
  size(450, 450);
  
  telTotGetal(100);
  vermenigvuldiger(0.5, 3, 2, 1);
  tekenPixelArt(150);
}

//tellen tot 100 oprdacht
void telTotGetal(int getal) {
  for (int index = 0; index <= getal; index++) {
    println(index);
  }
}

//Vermenigvuldiger
void vermenigvuldiger(float drempelwaarde, int getal, int keerFactor, int randomGetal) {
  println(getal);
  while (random(randomGetal) < drempelwaarde) {
    getal = getal * keerFactor;
    println(getal);
  }
}

//PixselArt II
final int ROOD  = #ff0000;
final int GRIJS = #aaaaaa;
final int ZWART = #000000;

void tekenPixelArt(int pixelSize) {
  int[][] tekening = {
    {ZWART, 0,             0,             pixelSize, pixelSize}, 
    {ROOD,  pixelSize,     0,             pixelSize, pixelSize}, 
    {ZWART, pixelSize * 2, 0,             pixelSize, pixelSize}, 
    {ROOD,  0,             pixelSize,     pixelSize, pixelSize}, 
    {ROOD,  pixelSize,     pixelSize,     pixelSize, pixelSize}, 
    {ROOD,  pixelSize * 2, pixelSize,     pixelSize, pixelSize}, 
    {ZWART, 0,             pixelSize * 2, pixelSize, pixelSize}, 
    {GRIJS, pixelSize,     pixelSize * 2, pixelSize, pixelSize}, 
    {ZWART, pixelSize * 2, pixelSize * 2, pixelSize, pixelSize}, 
  };
  
  for (int i = 0; i < tekening.length; i++) {
    tekenPixel(tekening[i]);
  }
}

void tekenPixel(int[] info) {
  noStroke();
  fill(info[0]);
  rect(info[1], info[2], info[3], info[4]);
}
