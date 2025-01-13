

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
  r3.display();
  r3.move();
}
