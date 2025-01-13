

Rocket r;  //min raket

Anders r2;


void setup() {
  
  size(800, 800);
  r = new Rocket();
  r2=new Anders();
}

void draw() {
  background (0);
  r2.display();
  r2.move();
  r2.boom();
}
