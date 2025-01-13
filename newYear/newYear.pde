Rocket r;  //min raket
Anders r2;
Simon r3;
Magnus r4;
fred996v r5;
Jaunius r1;

int counter=0;

void setup() {

  size(800, 800);
  r = new Rocket();
  r1= new Jaunius();
  r2= new Anders();
  r3 = new Simon();
  r4 = new Magnus();
  r5 = new fred996v();
  //r6 = new Jaunius();
}

void draw() {

  background (0);
  if (counter == 0) {
    fireRocket(r1);
  }

  if (counter == 1) {
    fireRocket(r2);
  }
  if (counter == 2) {
    fireRocket(r3);
  }
  if (counter == 3) {
    fireRocket(r4);
  }
  if (counter == 4) {
    fireRocket(r5);
  }
  
}



void fireRocket(Rocket r) {
  int fcboom = 80;
  if (frameCount>fcboom) {
    r.boom();
  } else {
    r.display();
    r.move();
  }
}

void mousePressed() {
  counter++;
}
