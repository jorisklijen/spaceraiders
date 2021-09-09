
int rad = 133;        
float xpos, ypos;       

float xspeed = 2.8;  
float yspeed = 2.2;  

int xdirection = 1;  
int ydirection = 1;  


void setup() 
{
  size(800, 400);
  noStroke();
  frameRate(144);
  ellipseMode(RADIUS);
  xpos = width/2;
  ypos = height/2;
}

void draw() 
{
  background(255);
  
  //plaats shape
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }

  // Draw the shape
  fill(255,0,0);
  ellipse(xpos, ypos, rad, rad);
}
