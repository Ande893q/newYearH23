class Rocket {
  // attributter
  PVector pos = new PVector(0, height);
  float angle=random(1, 7);
  PVector velocity = new PVector(angle, -3);


    // konstruktør
    Rocket() {
  }

  // metoder

  void display() {
    int diameter =10;
    circle(pos.x, pos.y, diameter);
  }


  void move() {
    pos.add(velocity);
    velocity.y+=0.1;
    velocity.x+=0.1;
  }

  void boom() {
  }
}

class Anders extends Rocket {

  void boom() {
    // min version
  }
}
class Simon extends Rocket {

  int R = (int)random(0, 256);
  int G = (int)random(0, 256);
  int B = (int)random(0, 256);
  //omskriver til integer, da random() giver en float

  void boom() {
    //laver en tilfældig baggrundsfarve
    background(R, G, B);
    //hvis R ikke er 0, så minus R med 1. Gentag ved G og B
    if (R != 0) {
      R--;
    }

    if (G != 0) {
      G--;
    }

    if (B != 0) {
      B--;
    }
  }
}
