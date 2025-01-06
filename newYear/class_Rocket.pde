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
  float diameter=200;
  circle(width/2,height/2,diameter);
  for(int i=0;i<100;i++){
  line(width/2,height/2,diameter);
  }
}
}
