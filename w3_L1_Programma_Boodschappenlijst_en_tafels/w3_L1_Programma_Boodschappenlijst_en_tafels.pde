

void setup() {
  size(1800, 900); 
  background(0);
  //drukAf();
  //tekenTafel(20, 20, 30);
  tekenMeerTafels(100, 0, 30, 4, 10);
}

//bootcahappen lijst.
void drukAf() {
  String[] bootschappen = {"brood", "melk", "eieren", "spinazie", "rijst", "zalm", "chocolade", "appels", "kaas"};
  for (int i = 0; i < bootschappen.length; i++) {
    println(bootschappen[i]);
  }
}

//tafels
void tekenTafelVan(int getal, int x, int startY, int groote,int minTafel, int maxTafel) {
  //background(0);
  for (int i = minTafel; i <= maxTafel; i++) {
    text(i * getal, x, i * groote + startY);
  }
}

void tekenMeerTafels(int x, int y, int spacing, int minTafel, int maxTafel) {
  for (int i = minTafel; i <= maxTafel; i++) {
    tekenTafelVan(i, i * spacing, y, spacing, minTafel, maxTafel);
  }
}
