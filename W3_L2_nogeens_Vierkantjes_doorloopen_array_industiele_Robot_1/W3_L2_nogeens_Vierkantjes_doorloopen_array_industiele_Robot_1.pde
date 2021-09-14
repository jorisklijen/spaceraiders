final int GROEN   = #00ff00;
final int GEEL    = #ffff00;
final int ORANJE  = #ffa500;
final int ROOD    = #ff0000;
final int PAARS   = #9400d3;

final int ZIJDE  = 10;
final int AANTAL = 100;

void setup() {
  size(1000, 1000);
  background(#FFFFFF);

  int kleur = #ff0000;
  geefFoutmeldingOfTekenVierkanten(kleur, AANTAL, ZIJDE);
}

void geefFoutmeldingOfTekenVierkanten(int kleur, int aantal, int grootte) {
  int breedteVierkantMetVierkanten = ZIJDE * AANTAL;

  if (breedteVierkantMetVierkanten > width || breedteVierkantMetVierkanten > height) {
    tekenFoutmelding(width / 2, height / 2, kleur);
  } else {
    int x = width / 2 - aantal * grootte /2;
    int y = height / 2 - aantal * grootte /2;
    tekenVierkantMetVierkanten(x, y, AANTAL, ZIJDE);
  }
}

void tekenVierkantMetVierkanten(int x, int y, int aantal, int grootte) {
  for (int i = 0; i < aantal; i++) {
    switch(i % 5) {
    case 0: 
      fill(GROEN);
      break;
    case 1:
      fill(GEEL);
      break;
    case 2:
      fill(ORANJE);
      break;
    case 3:
      fill(ROOD);
      break;
    case 4:
      fill(PAARS);
      break;
    }
    tekenRij(x, y + i * grootte, aantal, grootte);
  }
}

void tekenRij(int x, int y, int aantal, int grootte) {
  for (int i = 0; i < aantal; i++) {
    tekenVierkantje(x + grootte * i, y, grootte);
  }
}

void tekenVierkantje(int x, int y, int grootte) {
  noStroke();
  rect(x, y, grootte, grootte);
}

void tekenFoutmelding(int x, int y, int kleur) {
  fill(kleur);
  textAlign(CENTER, CENTER);
  text("Het 4kant is grooter dan schrem", x, y);
}


void draw() {
  println (showMuishelft(mouseX));
}

String showMuishelft(int muiscor) {
  String andwoord = "error";
  if (muiscor > width / 2) {
    andwoord = "Rechts";
  } else if (muiscor < width / 2) {
    andwoord = "Links";
  }
  return andwoord;
}

// overloading pakt outomaties de goede aan welk getal mee geven word
String geefQuotientAlsString(int getalA, int getalB) {
  if (getalA != 0) {
    return "" + getalA / getalB;
  } else {
    return "Oneindig";
  }
}
String geefQuotientAlsString(float getalA, float getalB) {
  if (getalA != 0) {
    return "" + getalA / getalB;
  } else {
    return "Oneindig";
  }
}
