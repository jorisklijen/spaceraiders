final int ZWART = #000000;
final int WIT   = #ffffff;
final int ROOD  = #ff0000;

void setup() {
  size(800, 500);
  background(ZWART);
  tekenDartBoard();
  intDelen(-724, 5);
  printIsGetalOnEven(5);
}

void tekenDartBoard() {
  int[][] radiusCircle = { 
    {140, ROOD}, 
    {120, WIT}, 
    {100, ROOD}, 
    {80, WIT}, 
    {60, ROOD}, 
    {40, WIT}, 
    {20, ROOD}
  };

  for (int i = 0; i < radiusCircle.length; i++) {
    tekenCircle(radiusCircle[i]);
  }
}

void tekenCircle(int[] circle) {
  fill(circle[1]);
  circle(width / 2, height / 2, circle[0]);
}

/*
 Traceren
 60 fout moet 18 zijn metohden is loessoe dus waarden zijn ere niet meer.
 
 Tracingopgave II 
 10 5 --> 5.0
 */

void intDelen(int waardenA, int waardenB) {
  int rest;
  int uitkomst;
  rest= waardenA % waardenB;
  uitkomst = waardenA / waardenB;

  println(uitkomst +" rest "+ rest);
} 

boolean isGetalOnEven(int getal) {
  return (getal % 2) == 0;
}

void printIsGetalOnEven(int getal){
   println(!isGetalOnEven(getal));
}

String printMijnNaam(String naam){
  
  return naam;
}
