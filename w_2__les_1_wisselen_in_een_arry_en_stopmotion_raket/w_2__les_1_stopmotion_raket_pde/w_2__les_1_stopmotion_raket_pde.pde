float posX = 250;
float posY = 150;

int groote = 50;
int groote3Hoek = 50;

//3hoek waareden
float posX1;
float posY1;
float posX2;
float posY2;
float posX3;
float posY3;

float xspeed = 2.8;  
float yspeed = 2.2;  

int xdirection = 1;  
int ydirection = 1;  

void setup() {
  size(500, 300);
  noStroke();
  surface.setResizable(true);
}

void draw() {
  raketAnim();
}

void raketAnim() {
  background(0);
  
  posX1 = posX;
  posY1 = posY;

  posX2 = (groote / 2) + posX;
  posY2 = (groote / 2) + (posY - groote);

  posX3 = posX + groote;
  posY3 = posY;

  //plaats shape
  posX = posX + (xspeed * xdirection);
  posY = posY + (yspeed * ydirection);

  if (posX > width - groote || posX < groote / 10) {
    xdirection *= -1;
  }
  if (posY > height - (groote) || posY < groote){
    ydirection *= -1;
  }


  //tekenen raket
  rect(posX, posY, groote, groote);
  triangle(posX1, posY1, posX2, posY2, posX3, posY3);
}
