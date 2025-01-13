

Rocket r;

Rocket2 r2;


void setup() {
  
  size(800, 800);
  r = new Rocket();
}

void draw() {
  background (0);
  r.display();
  r.move();
}
