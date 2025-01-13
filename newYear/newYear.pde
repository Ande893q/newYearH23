Rocket r;  //min raket

Anders r2;

Simon r3;
Magnus r3;


fred996v rf;

Jaunius r1;



void setup() {

  size(800, 800);
  r = new Rocket();
  r1= new Jaunius();
  r2= new Anders();
  r3 = new Magnus();

  rf = new fred996v();

  r2=new Anders();
  r3=new Simon();
  r4 = new Magnus();

}

void draw() {
  int fcboom = 80;
  background (0);

  r.display();
  r.move();
  r1.display();
  r1.move();
  r2.display();
  r2.move();
  r2.boom();
  
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
