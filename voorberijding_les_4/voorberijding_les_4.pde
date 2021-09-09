// W2-L1 Voorberijding Jors de Kleijn 5-9-2021
void setup(){
  size(100, 100);
  background(0);
  noStroke();
  tekenHoeken();
  wisselArray();
}

//Vier vierkanten

int vierkantGroote = 10;
int posX = 1, posY = 1;

void tekenHoeken(){
  //links boven
  rect(posX, posY, vierkantGroote, vierkantGroote);
  //links onder
  rect(posX, height - vierkantGroote - posY, vierkantGroote, vierkantGroote);
  //rechts boven
  rect(width - vierkantGroote - posX, posY, vierkantGroote, vierkantGroote);
  //rechts onder
  rect(width - vierkantGroote - posX, height - vierkantGroote - posY, vierkantGroote, vierkantGroote);
}

// wissel binnen een arry 1

/* 
voor het wisselen van 2 getallen binnen het array is 
een tijdelijke variable nodig waar tijdelijk 1 waarde word opgeslagen
en later weer word toegevoegt aan t arry als de andere waarde al is vervangen
*/

int[] array1 = {56, 3, 15, 23, 6, 23, 56};
int tempVal = 0;

void wisselArray(){
  tempVal = array1[2];
  array1[2] = array1[5];
  array1[5] = tempVal; 
  tempVal = 0;
  
  println(array1[2],array1[5]);
}
