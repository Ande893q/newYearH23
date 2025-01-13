class Rocket {
  // attributter
  PVector pos = new PVector(0, height);
  float angle=random(1, 7);
  PVector velocity = new PVector(angle, -3);

  // konstruktør
  Rocket() {
    // konstruktør
  }

  // metoder

  void display() {
    int diameter =10;
    circle(pos.x, pos.y, diameter);
  }


  void move() {
    pos.add(velocity);
    velocity.y=-6;
    velocity.x=0.9;

    if (velocity.y<-5) {
      velocity.y=-2;
      velocity.y-=0.15;
      velocity.x+=0.05;
    }

    if (velocity.x<0) {
      velocity.x=0.5;
    }
  }
  void boom() {
  }
}
class Anders extends Rocket {

  void boom() {
    colorMode(HSB);

    float cycle =frameCount;
    float boomDiameter=100;
    float placeHeight1=random(0, height/2);
    float placeWidth1=random(0, width);
    float placeHeight2=random(0, height/2);
    float placeWidth2=random(0, width);
    colorMode(HSB);
    color c=color(random(0, 255), random(0, 255), random(0, 255));


    if (frameCount<frameRate*5) {
      fill(255-cycle, 255, 255);
      circle(pos.x, pos.y, boomDiameter);
      fill(c);
      circle(placeWidth1, placeHeight1, boomDiameter*random(0, 2));
      circle(placeWidth2, placeHeight2, boomDiameter*random(0, 2));
    }

    colorMode(RGB);
  }
}



class Jaunius extends Rocket {
  int diameter;
  int alfa;

  class MyRocket extends Rocket {
    @Override
      void boom() {

      fill(255, 0, 0, alfa) ;
      ellipse(pos.x, pos.y, diameter*2, diameter*2);
    }
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
