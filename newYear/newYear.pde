Rocket r;  //min raket

Anders r2;

Magnus r3;

fred996v rf;

void setup() {

  size(800, 800);
  r = new Rocket();
  r2= new Anders();
  r3 = new Magnus();
  rf = new fred996v();
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
  
  if (frameCount>60) {
      rf.boom();
    } else {
      rf.display();
      rf.move();
    }
}
