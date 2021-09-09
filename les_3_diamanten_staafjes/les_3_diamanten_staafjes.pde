// W1 - L3 

/*
analyse zie png 
D:\joris\Documents\han\Structured Programming\les_3_diamanten_staafjes
*/

//posieties en afmetingen
int xPos = 0, yPos = 0;
int breete = 20;
float shaal = 0.7;


float[] waarden = {454.52, 255.54, 500.334, 0};
float gem = 0;

//kleurtjes
int[] kleur = {#000000, #ADD8E6, #DE1738, #E840AA};


void setup(){
  
  size(650, 500);
  surface.setTitle("Diamanten diagram");
  surface.setResizable(true);
  background(kleur[0]);
  noStroke();
  frameRate(60);
  
  
  
}

void setStartPos(){
  yPos = height ;
}

void tekenGrafiek(){
  for (int i = 0; i <= waarden.length - 1; i = i + 1){
   xPos = xPos + breete; 
   fill(kleur[i]);
   rect(xPos, height - waarden[i], breete, waarden[i]);
  }
}

void draw(){
  setStartPos();
  tekenGrafiek(); 
}
