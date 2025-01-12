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

    float diameter=100;
    float placeHeight1=random(0, height/2);
    float placeWidth1=random(0, width);
    float placeHeight2=random(0, height/2);
    float placeWidth2=random(0, width);


    color c=color(random(0, 255), random(0, 255), random(0, 255));
    if (timer<frameRate*5) {

      fill(c);
      circle(placeWidth1, placeHeight1, diameter*random(0,2));
      circle(placeWidth2, placeHeight2, diameter*random(0, 2));
      
    }
    timer=timer+1;
  }
}
