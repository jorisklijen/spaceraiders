boolean scoreBool = true;
int tempScore = 0;
// --locaties vijhand----------------------------------
float getXposEnnemy(){
 return xPos; 
}
float getYposEnnemy(){
 return yPos; 
}
// --Score---------------------------------------------
int getScore(){
  return score;
}
boolean getIsAlive(){
 return isAlive(); 
}

int telScore(int score){
  tempScore = score;
  if (!getIsAlive() && scoreBool){
    scoreBool = false;
    
  }
  return score;
}

void tekenScore(int score, int x, int y, int kleur, PFont font, int groote){
  fill(kleur);
  textFont(font);
  textSize(groote);
  textAlign(LEFT, BOTTOM);
  text("Score: " + score, x, y );
}
