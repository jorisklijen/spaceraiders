// Coördinaten spel //<>// //<>//
int xCor = 0; 
int yCor = 0; 

int textPosX = 0;
int textPosY = 0;

int credits = 0;
int beginCredits = 4;

boolean gameState = true;

final int ROOD = #FF0000;
final int GEEL = #FFFF00;

void setup() {
  credits = beginCredits;

  size(400, 300);
  surface.setTitle("Coördinaten spel");
  surface.setResizable(true);
  surface.setLocation(100, 100);
  //background(GEEL);
}

void draw() {
  background(GEEL);
  opNiewStarten();
  printText(ROOD);
  printCredits();
}

void printText(int kleur) {
  fill(kleur); 
  textAlign(CENTER, CENTER);
  text(regelText(), width / 2, height / 2);
}

void printCredits() {
  text("Credits = " + credits, 50, 20);
}


void mouseClicked() {
  credits = berekenCreddits();
}

int berekenCreddits() {
  if (berekenXcor() % 2 == 0 && berekenYcor() % 2 == 0) {
    credits++;
    println(credits);
  } else {
    credits--;
  }
  if (credits <= 0) {
    gameState = false;
  }
  return credits;
}

void opNiewStarten() {
  if (credits <= 0 && keyCode == ENTER) {
    gameState = true;
    credits = beginCredits;
  }
}

String regelText() {
  String text = "error";
  if (gameState == false) {
    text = "Je Hebt Verlooren :( Druk Op Enter Om Opnieuw Te Starten!";
  } else if (berekenXcor() % 2 == 0 && berekenYcor() % 2 == 0) {
    text = "Xpos = " + berekenXcor() + ", Ypos = " + berekenYcor();
  } else {
    text = "De X en Y zijn Oneven!!";
  }
  return text;
}

int berekenXcor() {
  xCor = mouseX;
  return xCor;
}

int berekenYcor() {
  yCor = mouseY;
  return yCor;
}
