PImage speler1;
PImage speler2;

PImage badRaider;
PImage monster;
PImage diamant;
PImage munt;
PImage knop;
PImage portaal;
PImage zuurstofTank;

PImage stekel1;
PImage stekel2;
PImage stekel3;
PImage stekel4;

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

PImage fade;

PImage getFade() {
  return fade;
}

PFont spaceFond;
PFont menuFont;
PFont bloedFont;

PImage getSpeler1() {
  return speler1;
}
PImage getSpeler2() {
  return speler2;
}
PImage getKnop() {
  return knop;
}
PImage getPortaal() {
  return portaal;
}
PImage geTMunt() {
  return munt;
}
PImage getDiamant() {
  return diamant;
}
PImage getVloer() {
  return vloer;
}
PImage getSpace() {
  return space;
}
PImage getBadRaider() {
  return badRaider;
}
PImage getZuurstofTank() {
  return zuurstofTank;
}
PImage getMuur() {
  return muur;
}
PImage getMuur0() {
  return muur0;
}
PImage getMuur1() {
  return muur1;
}
PImage getMuur2() {
  return muur2;
}
PImage getMuur3() {
  return muur3;
}
PImage getMuur4() {
  return muur4;
}
PImage getMuur5() {
  return muur5;
}
PImage getMuur6() {
  return muur6;
}
PImage getMuur7() {
  return muur7;
}
PImage getMuur8() {
  return muur8;
}
PImage getMuur9() {
  return muur9;
}
PImage getMuur10() {
  return muur10;
}
PImage getMuur11() {
  return muur11;
}
PImage getMuur12() {
  return muur12;
}
PImage getMuur13() {
  return muur13;
}
PImage getMuur14() {
  return muur14;
}
PImage getMuur15() {
  return muur15;
}
PImage getMuur16() {
  return muur16;
}
PImage getMuur17() {
  return muur17;
}
PImage getMuur18() {
  return muur18;
}
PImage getMuur19() {
  return muur19;
}
PImage getMuur20() {
  return muur20;
}
PImage getMuur21() {
  return muur21;
}
PImage getMuur22() {
  return muur22;
}
PImage getMuur23() {
  return muur23;
}
PImage getMuur24() {
  return muur24;
}
PImage getMuur25() {
  return muur25;
}
PImage getMuur26() {
  return muur26;
}
PImage getMuur27() {
  return muur27;
}
PImage getMuur28() {
  return muur28;
}
PImage getMuur29() {
  return muur29;
}
PImage getMuur30() {
  return muur30;
}
PImage getMuur31() {
  return muur31;
}
PImage getMuur32() {
  return muur32;
}
PImage getMuur33() {
  return muur33;
}
PImage getMuur34() {
  return muur34;
}
PImage getMuur35() {
  return muur35;
}
PImage getMuur36() {
  return muur36;
}
PImage getMuur37() {
  return muur37;
}
PImage getMuur38() {
  return muur38;
}
PImage getMuur39() {
  return muur39;
}
PImage getMuur40() {
  return muur40;
}
PImage getMuur41() {
  return muur41;
}
PImage getMuur42() {
  return muur42;
}
PImage getMuur43() {
  return muur43;
}
PImage getMuur44() {
  return muur44;
}
PImage getMuur45() {
  return muur45;
}

PImage getStekel1() {
  return stekel1;
}

PImage getStekel2() {
  return stekel2;
}

PImage getStekel3() {
  return stekel3;
}

PImage getStekel4() {
  return stekel4;
}

PFont getSpaceFond() {
  return spaceFond;
}

PFont getMenuFont() {
  return menuFont;
}

PFont getBloedFont() {
  return bloedFont;
}

void laadFond() {
  spaceFond = createFont("space.otf", 8);
  menuFont = createFont("menuFont.otf", 16);
  bloedFont = createFont("bloedFont.otf", 16);
}

void laadAfbeeldingen() {

  speler1 = loadImage("player1.png");
  speler2 = loadImage("player2.png");

  badRaider = loadImage("badRaider.png");
  monster = loadImage("monster.png");
  diamant = loadImage("alt_diamant.png");
  munt = loadImage("alt_munt.png");
  knop = loadImage("knop.png");
  portaal= loadImage("alt_portaal.png");
  zuurstofTank = loadImage("alt_zuurstofTank.png");

  stekel1 = loadImage("spike1.png");
  stekel2 = loadImage("spike2.png");
  stekel3 = loadImage("spike3.png");
  stekel4 = loadImage("spike4.png");

  fade = loadImage("fade.png");

  space = loadImage("alt_space2.png");
  vloer = loadImage("vloer.png");
  muur  = loadImage("alt_muur.png");
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
