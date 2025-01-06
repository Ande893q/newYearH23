class Rocket {
  // attributter
  PVector pos = new PVector(0, height);
  float angle=random(1, 7);
  PVector velocity = new PVector(angle, -3);
  


  // konstruktør
  Rocket() {
    
  }

  // metoder

  void display() {
    int diameter =10;
    circle(pos.x, pos.y, diameter);
  }
  
  
  void move(){
  pos.add(velocity);
  velocity.y+=0.1;
  velocity.x+=0.1;
  
  }
  
  void boom(){}
}

class Anders extends Rocket{

void boom(){
  int l = 20;
  stroke(255,0,0);
  line(pos.x,pos.y,pos.x+l/2,pos.y+l/2);
  line(pos.x,pos.y,pos.x+0,pos.y+l);
  line(pos.x,pos.y,pos.x-l/2,pos.y+l/2);
  line(pos.x,pos.y,pos.x-l,pos.y+0);
  line(pos.x,pos.y,pos.x-l/2,pos.y-l/2);
  line(pos.x,pos.y,pos.x+0,pos.y-l);
  line(pos.x,pos.y,pos.x+l/2,pos.y-l/2);
  line(pos.x,pos.y,pos.x+l,pos.y+0);
  }
}
