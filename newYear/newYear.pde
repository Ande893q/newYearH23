

Rocket r;  //min raket

Anders r2;

Simon r3;
Magnus r3;


void setup() {
  
  size(800, 800);
  r = new Rocket();
  r2=new Anders();
  r3=new Simon();
  r4 = new Magnus();
}

void draw() {
  background (0);
  r2.display();
  r2.move();
  r3.display();
  r3.move();
}
