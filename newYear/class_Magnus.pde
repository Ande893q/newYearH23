class Magnus extends Rocket {
  boolean exploded = false;
  int frameCounter;
  void explode(int r, int g, int b, int alpha, int diameter, float posX, float posY) {
    noStroke();
    
    fill(r, g, b, alpha);
    for (int i = 0; i < 10; i++) {
      float angle = radians(random(360));
      float radius = random(diameter, diameter * 2);
      float xOffset = cos(angle) * radius;
      float yOffset = sin(angle) * radius;
      ellipse(posX + xOffset, posY + yOffset, random(5, 15), random(5, 15));
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
      frameCounter = frameCount;
      exploded = true;
    }
    if(frameCount < frameCounter + 60) {
      explode(r, g, b, alpha, diameter, pos.x, pos.y);
      explode(r, g, b, alpha, diameter, pos.x + random(25, 43), pos.y + random(25, 43));
      explode(r, g, b, alpha, diameter, pos.x - random(25, 43), pos.y - random(25, 43));
      explode(r, g, b, alpha, diameter, pos.x - random(25, 43), pos.y + random(25, 43));
      explode(r, g, b, alpha, diameter, pos.x + random(25, 43), pos.y - random(25, 43));
      diameter += 2;
      alpha = max(0, alpha - 50);
    }
  }
}
