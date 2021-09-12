void setup() {
  size(600, 400);
  telTotGetal(100);
  vermenigvuldiger(0.5, 3, 2, 1);
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

void tekenPixelArt(int kleur, int[] pos) {
  
}
