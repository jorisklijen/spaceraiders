int[][] coordinaten = {
  // x
  {20,  150, 280},
  // y
  {500},
};

final int WIT = #ffffff;

void setup() {
 int[][] knoppen ={
 {10, 50},
 {10, 80},
 {10, 110}
 };
  
  size(800, 500);
  background(58);
  
  tekenKnop2(knoppen[0], 10, 20, WIT);
  tekenKnop2(knoppen[2], 10, 20, WIT);
  
  // eeste 2 waarden x cor uit array 3e en 4e y cor, 5e de breete 6e de hoogte en de laatse de kleur
  tekenKnop(0, 0, 1, 0, 100, 60, WIT);
  tekenKnop(0, 1, 1, 0, 100, 60, WIT);
  tekenKnop(0, 2, 1, 0, 100, 60, WIT);
  
}

//morgen na vragen in les.
void tekenKnop(int arX1, int arX2, int arY1, int arY2, int b, int h, int kleur){
  fill(kleur);
  rect(coordinaten[arX1][arX2], coordinaten[arY1][arY2] - (h + (h / 2))  , b, h);
}

void tekenKnop2(int[] knop, int b, int h, int kleur){
  fill(kleur);
  rect(knop[0], knop[1], b, h);
}
