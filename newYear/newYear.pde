

Rocket r;  //min raket

Anders r2;

Magnus r3;

Jaunius r1;


void setup() {
  
  size(800, 800);
  r = new Rocket();
  r1= new Jaunius();
  r2= new Anders();
  r3 = new Magnus();
}

void draw() {
  background (0);

  r.display();
  r.move();
  r1.display();
  r1.move();
  r2.display();
  r2.move();
  r2.boom();
}
