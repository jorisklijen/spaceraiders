PImage speler1;
PImage speler2;

PImage badRaider;
PImage monster;
PImage diamant;
PImage munt;
PImage knop;
PImage portaal;
PImage zuurstofTank;

PImage space;
PImage vloer;
PImage muur;
PImage muur0;
PImage muur1;
PImage muur2;
PImage muur3;
PImage muur4;
PImage muur5;
PImage muur6;
PImage muur7;
PImage muur8;
PImage muur9;
PImage muur10;
PImage muur11;
PImage muur12;
PImage muur13;
PImage muur14;
PImage muur15;
PImage muur16;
PImage muur17;
PImage muur18;
PImage muur19;
PImage muur20;
PImage muur21;
PImage muur22;
PImage muur23;
PImage muur24;
PImage muur25;
PImage muur26;
PImage muur27;
PImage muur28;
PImage muur29;
PImage muur30;
PImage muur31;
PImage muur32;
PImage muur33;
PImage muur34;
PImage muur35;
PImage muur36;
PImage muur37;
PImage muur38;
PImage muur39;
PImage muur40;
PImage muur41;
PImage muur42;
PImage muur43;
PImage muur44;
PImage muur45;

PFont spaceFond;

PImage getKnop() {
  return knop;
}
PImage GetPortaal() {
  return portaal;
}
PImage GeTMunt() {
  return munt;
}
PImage GetDiamant() {
  return diamant;
}
PImage GetVloer() {
  return vloer;
}
PImage GetSpace() {
  return space;
}
PImage GetBadRaider() {
  return badRaider;
}
PImage GetZuurstofTank() {
  return zuurstofTank;
}
PImage GetMuur() {
  return muur;
}
PImage GetMuur0() {
  return muur0;
}
PImage GetMuur1() {
  return muur1;
}
PImage GetMuur2() {
  return muur2;
}
PImage GetMuur3() {
  return muur3;
}
PImage GetMuur4() {
  return muur4;
}
PImage GetMuur5() {
  return muur5;
}
PImage GetMuur6() {
  return muur6;
}
PImage GetMuur7() {
  return muur7;
}
PImage GetMuur8() {
  return muur8;
}
PImage GetMuur9() {
  return muur9;
}
PImage GetMuur10() {
  return muur10;
}
PImage GetMuur11() {
  return muur11;
}
PImage GetMuur12() {
  return muur12;
}
PImage GetMuur13() {
  return muur13;
}
PImage GetMuur14() {
  return muur14;
}
PImage GetMuur15() {
  return muur15;
}
PImage GetMuur16() {
  return muur16;
}
PImage GetMuur17() {
  return muur17;
}
PImage GetMuur18() {
  return muur18;
}
PImage GetMuur19() {
  return muur19;
}
PImage GetMuur20() {
  return muur20;
}
PImage GetMuur21() {
  return muur21;
}
PImage GetMuur22() {
  return muur22;
}
PImage GetMuur23() {
  return muur23;
}
PImage GetMuur24() {
  return muur24;
}
PImage GetMuur25() {
  return muur25;
}
PImage GetMuur26() {
  return muur26;
}
PImage GetMuur27() {
  return muur27;
}
PImage GetMuur28() {
  return muur28;
}
PImage GetMuur29() {
  return muur29;
}
PImage GetMuur30() {
  return muur30;
}
PImage GetMuur31() {
  return muur31;
}
PImage GetMuur32() {
  return muur32;
}
PImage GetMuur33() {
  return muur33;
}
PImage GetMuur34() {
  return muur34;
}
PImage GetMuur35() {
  return muur35;
}
PImage GetMuur36() {
  return muur36;
}
PImage GetMuur37() {
  return muur37;
}
PImage GetMuur38() {
  return muur38;
}
PImage GetMuur39() {
  return muur39;
}
PImage GetMuur40() {
  return muur40;
}
PImage GetMuur41() {
  return muur41;
}
PImage GetMuur42() {
  return muur42;
}
PImage GetMuur43() {
  return muur43;
}
PImage GetMuur44() {
  return muur44;
}
PImage GetMuur45() {
  return muur45;
}

PFont getSpaceFond(){
 return spaceFond; 
}

void laadFond() {
  spaceFond = createFont("space.otf", 8);
}

void laadAfbeeldingen() {

  speler1 = loadImage("player1.png");
  speler2 = loadImage("player2.png");

  badRaider = loadImage("badRaider.png");
  monster = loadImage("monster.png");
  diamant = loadImage("diamant.png");
  munt = loadImage("munt.png");
  knop = loadImage("knop.png");
  portaal= loadImage("portaal.png");
  zuurstofTank = loadImage("zuurstofTank.png");

  space = loadImage("space.png");
  vloer = loadImage("vloer.png");
  muur  = loadImage("muur.png");
  muur0 = loadImage("muur0.png");
  muur1 = loadImage("muur1.png");
  muur2 = loadImage("muur2.png");
  muur3 = loadImage("muur3.png");
  muur4 = loadImage("muur4.png");
  muur5 = loadImage("muur5.png");
  muur6 = loadImage("muur6.png");
  muur7 = loadImage("muur7.png");
  muur8 = loadImage("muur8.png");
  muur9 = loadImage("muur9.png");
  muur10 = loadImage("muur10.png");
  muur11 = loadImage("muur11.png");
  muur12 = loadImage("muur12.png");
  muur13 = loadImage("muur13.png");
  muur14 = loadImage("muur14.png");
  muur15 = loadImage("muur15.png");
  muur16 = loadImage("muur16.png");
  muur17 = loadImage("muur17.png");
  muur18 = loadImage("muur18.png");
  muur19 = loadImage("muur19.png");
  muur20 = loadImage("muur20.png");
  muur21 = loadImage("muur21.png");
  muur22 = loadImage("muur22.png");
  muur23 = loadImage("muur23.png");
  muur24 = loadImage("muur24.png");
  muur25 = loadImage("muur25.png");
  muur26 = loadImage("muur26.png");
  muur27 = loadImage("muur27.png");
  muur28 = loadImage("muur28.png");
  muur29 = loadImage("muur29.png");
  muur30 = loadImage("muur30.png");
  muur31 = loadImage("muur31.png");
  muur32 = loadImage("muur32.png");
  muur33 = loadImage("muur33.png");
  muur34 = loadImage("muur34.png");
  muur35 = loadImage("muur35.png");
  muur36 = loadImage("muur36.png");
  muur37 = loadImage("muur37.png");
  muur38 = loadImage("muur38.png");
  muur39 = loadImage("muur39.png");
  muur40 = loadImage("muur40.png");
  muur41 = loadImage("muur41.png");
  muur42 = loadImage("muur42.png");
  muur43 = loadImage("muur43.png");
  muur44 = loadImage("muur44.png");
  muur45 = loadImage("muur45.png");
}
