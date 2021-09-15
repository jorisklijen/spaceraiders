void setup() {
  size(400,400);
  int x = 50;
  int y = 50;
  int hoogte = 50;
  int breete = 100;
  if (muisBovenRechthoek(x, y, hoogte, breete)) {
    tekenHuis(10, 10, 50, 50);
  } else {
    tekenHuis(400, 400, 50, 50);
  }
}

boolean muisBovenRechthoek(int x, int y, int breete, int hoogte) {
  rect(x,y,breete, hoogte);
  if (mouseX >= x && mouseX <= x + breete && mouseY >= y && mouseY <= y + hoogte) {
    return true;
  } else {
    return false;
  }
}

void tekenHuis(int x, int y, int b, int h) {
  
}
