// W1 - L3 Voorbereiding

// Joris de Kleijn 31-8-2021

/*

Tracing I

in de console zou moetten staan:  0 15 20 1 (de 5 / 10 kan geen 0.5 zijn 
in dit geval door dat het een int is en geen float)

*/

int posX = 0;
int posY = 0;

int collor = #e12120;
int black = 0;

void setup(){
  fullScreen();
  background(0);
  noStroke();
}

void draw(){
  stroke(collor);
  noFill();
  rect(posX , posY , width - 1 , height - 1);
}


/*
  Tracing II

  in de console komt te staan:
  
  13 - 7.1 - 7.1
  
  13 - 14.2 - 7.1
  
  13 - 14.2 - 1
  
  14.2 - 14.2 - 1
*/
