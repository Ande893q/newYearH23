

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
  background (0);
  r2.display();
  r2.move();
  r2.boom();
  if(frameCount < 30) {
    r3.move();
    r3.display();
  } else {
    r3.boom();
  }
}
