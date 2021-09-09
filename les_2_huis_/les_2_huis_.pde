// groei huisje
int schaal = 2;

//demensies huisje
int huisX = 100, huisY = 100;
int locX = 50, locY = 60;
int hulpVal = 100;

int bDakX = (huisX / 2) + locX , bDakY = (huisY / 2) + (locY - hulpVal);
int aDakX = locX, aDakY = locY;
int cDakX = locX + huisX, cDakY = locY;

//kleuren 
int kHuis = #BC4A3C;
int achtergrond = #ADD8E6;

void setup(){
  size(500, 650);
  surface.setTitle("Groei huisje");
  surface.setResizable(true);
 
  background(achtergrond);
  noStroke();
  frameRate(60);
}

void draw(){

schaal =  height / 200;
  
fill(kHuis);
rect(locX * schaal, locY * schaal, huisX * schaal, huisY * schaal);
triangle(aDakX * schaal, aDakY * schaal, bDakX * schaal, bDakY * schaal, cDakX * schaal, cDakY * schaal);
}
