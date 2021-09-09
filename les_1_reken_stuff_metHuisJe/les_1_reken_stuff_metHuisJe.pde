//W1 - L1 Programma
//Onderwerpen: Algoritmen, coderen, rekenen, datatypen.


//reken andwoorden in alfabeetische volgorde
int a = 89+17, b = 125 - 23, c = 75 * 3;
float d = 45 % 7, e = 45 / 7;

//groote beeltcherm
size(500, 700);
background(0);

//console
print(a, b, c, d, e, e);

//aplication
textSize(20);
fill(0, 408, 612);
text("89 + 17 = " + (89 + 17), 20 , 20);
fill(0, 408, 612, 230);
text("125 - 23 = " + (125 - 23), 20, 40);
fill(0, 408, 612, 210);
text("75 * 3 = " + (75 * 3), 20, 60);
fill(0, 408, 612, 190);
text("45 % 7 = " + (45 % 7), 20, 80);
fill(0, 408, 612, 170);
text("45 / 7 = " + (45 / 7), 20, 100);
fill(0, 408, 612, 150);
text("45.0 / 7 = " + (45.0 / 7), 20, 120);


// huisje
int huisX = 100, huisY = 100;
int locX = 20, locY = 300;
int hulpVal = 100;

int offsetDakX = (huisX / 2) + locX , offsetDakY = (huisY / 2) + (locY - hulpVal);
int bDakX = locX, bDakY = locY;
int eDakX = locX + huisX, eDakY = locY;

fill(255,255,15);
rect(locX, locY, huisX, huisY);
triangle(bDakX, bDakY, offsetDakX, offsetDakY, eDakX, eDakY);
