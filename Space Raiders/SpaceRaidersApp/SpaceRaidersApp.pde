int vensterBreete = 1500;
int vensterHoogte = 1000;
int fps = 144;

void settings() {
  size(vensterBreete, vensterHoogte);
}

void setup() {
  surface.setResizable(true);
  surface.setTitle("SPACE RAIDERS");
  laadAfbeeldingen();
  laadFond();
  frameRate(fps);
}

void draw() {
  laadScene();
  
  //test levels
  if (key == '1' ){
   setLevel(1); 
  }
  if (key == '2' ){
   setLevel(2); 
  }
  if (key == '3' ){
   setLevel(3); 
  }
  if (key == '4' ){
   setLevel(4); 
  }
  if (key == '0' ){
   setLevel(0); 
  }
}
