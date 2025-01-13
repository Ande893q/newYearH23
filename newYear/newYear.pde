Rocket r;  //min raket
Anders r1;
Simon r2;
Magnus r3;
fred996v r4;
Jaunius r5;

int counter;

void setup() {

  size(800, 800);
  r = new Rocket();
  r1= new Anders();
  r2 = new Simon();
  r3 = new Magnus();
  r4 = new fred996v();
  r5= new Jaunius();
}

void draw() {
  background (0);
  switch(counter) {
    case 5:
      fireRocket(r5);
      break;
    case 4:
      fireRocket(r4);
      break;
    case 3:
      fireRocket(r3);
      break;
    case 2:
      fireRocket(r2);
      break;
    case 1:
      fireRocket(r1);
      break;
    default:
      fireRocket(r); 
  }
}

void fireRocket() {
  counter++;
  int fcboom = 80;
  if (frameCount>fcboom) {
    r3.boom();
  } else {
    r3.display();
    r3.move();
  }
}
