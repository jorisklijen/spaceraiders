int grooteEnnemy = 50;

float xPos = 0.0;
float yPos = 0.0;
float spawningPeddingBoven   = 50.5;
float spawningPeddingOnder   = 50.5;
float spawningPeddingZijkant = 75.5;

float getSnelheid() {
  return snelheid;
}

PImage getAfbeeldingLevend() {
  return levend;
}

PImage getAfbeeldingDood() {
  return dood;
}

void spawnEnnemy() {
  yPos = constrain(random(height), spawningPeddingBoven, height - spawningPeddingOnder - grooteEnnemy );
  xPos = constrain(random(width), spawningPeddingZijkant, width - spawningPeddingZijkant - grooteEnnemy );
  tekenEnnemy(veranderAfbeelding(), xPos, yPos, grooteEnnemy);
}

void beweegEnnemy() {
}

void tekenEnnemy(PImage img, float x, float y, int groote) {
  image(img, x, y, groote, groote);
}

PImage veranderAfbeelding() {
  if (!isAlive()) {
    return getAfbeeldingLevend();
  } else {
    return getAfbeeldingDood();
  }
}

boolean isAlive() {
  if (isMuisOverEnnemy() && mousePressed) {
    return false;
  } else {
    return true;
  }
}

boolean isMuisOverEnnemy() {
  if ( mouseX >= xPos && mouseX <= xPos + grooteEnnemy 
    && mouseY >= yPos && mouseY <= yPos + grooteEnnemy) {
    return true;
  } else {
    return false;
  }
}
