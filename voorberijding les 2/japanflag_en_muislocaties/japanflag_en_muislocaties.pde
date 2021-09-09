int flagShaal = 300;
int posY = 0;
int posX = 0;

int leterGroote = 0;

int achtergrond = #000000;
int kleurFlag = #ffffff;
int kleurCircle = #ff0000;

String landNaam = "Nippon";


void setup(){
  
  size(600, 300);
  surface.setTitle(landNaam);
  surface.setResizable(true);
  surface.setLocation(posY, posX);
  
  background(achtergrond);
  noStroke();
  frameRate(144);
}

void draw(){
  
  flagShaal = height;
  
  // flag tekenen 
  fill (kleurFlag);
  rect (posX, posY, flagShaal * 2, flagShaal);
  fill (kleurCircle);
  circle(posX + flagShaal, posY + flagShaal / 2, (flagShaal * 2) / 3);
  
  //text centreeren op de flag
  leterGroote = ((flagShaal * 2) / 3) / 5 ;
  fill(achtergrond);
  textSize(leterGroote);
  textAlign(CENTER);
  text(landNaam, posX + flagShaal, (posY + flagShaal / 2) + ( leterGroote / 4) );
  
  //console muis posietie
  print(mouseX,mouseY);
}
