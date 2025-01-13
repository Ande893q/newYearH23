Rocket r;  //min raket

Anders r2;

Magnus r3;


void setup() {

  size(800, 800);
  r = new Rocket();
  r2= new Anders();
  r3 = new Magnus();
}

void draw() {
  int fcboom = 80;
  background (0);
  if (frameCount>fcboom) {
    r3.boom();
  } else {
    r3.display();
    r3.move();
  }
}
