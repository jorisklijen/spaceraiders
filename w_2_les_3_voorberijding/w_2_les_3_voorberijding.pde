/*
Expressies

1= false
2= true
3= true
4= false
5= false
6= true
7= licht er aan of de getallen interges zijn want as dat zo is is het true
maar als het floats zijn is het false.
*/

/*
Tracing

  false
  sok false
  de eenalaatse false in isVisible word true
  true
  sok true
  de laatse waarde in isVisible word false
  false
  hoed false
*/

boolean tussen;
boolean deelbaar;

void setup(){
 size(500,350); 
 background(58); 
 tussen = ligtGetalTussen(4, 8, 7);
 println(tussen);
 deelbaar = isGetalDeelbaarDoorVijf(25, 5);
 println(deelbaar);
}

boolean ligtGetalTussen(int onderWaarde, int bovenWaarden , int getal){
  boolean ertussen;
  if(abs(getal)  > abs(onderWaarde) || abs(getal) < abs(bovenWaarden) ){
    ertussen = true;
  }
  else{
    ertussen = false;
  }
  return ertussen;
}

boolean isGetalDeelbaarDoorVijf(float getal, float deelGetal){
  boolean doorVijf;
  if(getal % deelGetal == 0){
    doorVijf = true;
  }
  else{
    doorVijf = false;
  }
  return doorVijf;
}
