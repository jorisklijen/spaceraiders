boolean spelen = true;

void startLoop(boolean startScherm) {
  switch (int(startScherm)) {
  case 1:
    println("********************");
    println("loading start scherm");
    if (spelen) {
      setStartScherm(false);
      println("********************");
      println("loading game");
      setGameScherm(true);
      println("********************");
      println("loaded game");
    }
    break;
  }
}
int zetHoeveelhijdSchatten() {

  return 1;
}
