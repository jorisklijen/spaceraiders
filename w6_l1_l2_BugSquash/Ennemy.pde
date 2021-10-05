int grooteEnnemy = 50;

float xPos = 0.0;
float yPos = 0.0;
float spawningPeddingBoven   = 50.5;
float spawningPeddingOnder   = 50.5;
float spawningPeddingZijkant = 75.5;

boolean respawn = true;

float getSnelheid() {
  return snelheid;
}

PImage getAfbeeldingLevendR() {
  return levendR;
}

PImage getAfbeeldingLevendL() {
  return levendL;
}

PImage getAfbeeldingDood() {
  return dood;
}

void spawnEnnemy() {
  if (respawn) {
    respawn = false;
    yPos = constrain(random(height), spawningPeddingBoven, height - spawningPeddingOnder - grooteEnnemy );
    xPos = constrain(random(width), spawningPeddingZijkant, width - spawningPeddingZijkant - grooteEnnemy );
  }
  tekenEnnemy(veranderAfbeelding(), beweegEnnemy(getSnelheid()), yPos, grooteEnnemy);
}

float beweegEnnemy(float speed) {
  if (xPos + grooteEnnemy / 2 < width / 2) {
    xPos = xPos - speed;
    if (xPos + grooteEnnemy < 0) {
      respawn = true;
    }
  } else if (xPos + grooteEnnemy / 2 > width / 2) {
    xPos = xPos + speed;
    if (xPos > width) {
      respawn = true;
    }
  }
  return xPos;
}

void tekenEnnemy(PImage img, float x, float y, int groote) {
  image(img, x, y, groote, groote);
}

PImage veranderAfbeelding() {
  if (isAlive()) {
    scoreBool = true;
    if (xPos + grooteEnnemy / 2 > width / 2) {
      return getAfbeeldingLevendR();
    } else {
      return getAfbeeldingLevendL();
    }
    
  } else {
    telScore();
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
