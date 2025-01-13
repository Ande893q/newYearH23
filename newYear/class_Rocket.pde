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
  velocity.y=-6;
  velocity.x=0.9;
  
  
  if (velocity.y<-5){
  velocity.y=-2;
  }
  
  if (velocity.x<0){
  velocity.x=0.5;
  }
  
  
  }
  
}
