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
  velocity.y-=0.3;
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

class Magnus extends Rocket {
  boolean exploded = false;
  void explode(int r, int g, int b, int alpha, int diameter) {
    noStroke();
    
    fill(r, g, b, alpha);
    for (int i = 0; i < 10; i++) {
      float angle = radians(random(360));
      float radius = random(diameter, diameter * 2);
      float xOffset = cos(angle) * radius;
      float yOffset = sin(angle) * radius;
      ellipse(pos.x + xOffset, pos.y + yOffset, random(5, 15), random(5, 15));
    }
    strokeWeight(1);
  }
  void boom() {
    
    int alpha = 255;
    
    int r = (int) random(255);
    int g = (int) random(255);
    int b = (int) random(255);
    int diameter = 10;
    
    if(!exploded) {
       explode(r, g, b, alpha, diameter);
    }
    exploded = true;
  }
}
