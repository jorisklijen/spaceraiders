/*tracing
 1, 2, 9, 10, 11 
 */

void setup() {
  size(400, 200);
  background(kleurVeranderingen(-4, -2));
  tekenVierkant();
}

//Algoritme met condities implementeren
final int ZWART = #000000;
final int GROEN = #00ff00;
final int ROOD  = #ff0000;
final int WIT   = #ffffff;

int kleurVeranderingen(int aantal, int refAantal) {
  int kleur;

  if (aantal == refAantal) {
    kleur = ZWART;
  } else if (aantal > refAantal) {
    kleur = GROEN;
  } else if (aantal < refAantal && aantal > 0) {
    kleur = WIT;
  } else {
    kleur = ROOD;
  }
  return kleur;
}

//Vierkantjes, vierkantjes
//Niet gelukt om in t midden te krijgen, graag in de les aandacht aan geven.
final int ZIJDE = 15;
final int AANTAL = 15;

void tekenRow(int y) {
  for (int i = 0; i < AANTAL; i++) {
    rect(ZIJDE * i, y, ZIJDE, ZIJDE);
    if (width <= ZIJDE * i || height <= ZIJDE * i) {
      println("past niet");
    }
  }
}

void tekenVierkant() {
  for (int i = 0; i < AANTAL; i++) {
    tekenRow(ZIJDE * i);
  }
}
