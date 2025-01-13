

Rocket r;

Jaunius r1;


void setup() {
  
  size(800, 800);
  r = new Rocket();
  r1= new Jaunius();
}

void draw() {
  background (0);
  r.display();
  r.move();
  r1.display();
  r1.move();
}
