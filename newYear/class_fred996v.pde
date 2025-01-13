class fred996v extends Rocket {
  void boom() {
    int l = 20;
    stroke(255, 0, 0);
    line(pos.x, pos.y, pos.x+l/2, pos.y+l/2);
    line(pos.x, pos.y, pos.x+0, pos.y+l);
    line(pos.x, pos.y, pos.x-l/2, pos.y+l/2);
    line(pos.x, pos.y, pos.x-l, pos.y+0);
    line(pos.x, pos.y, pos.x-l/2, pos.y-l/2);
    line(pos.x, pos.y, pos.x+0, pos.y-l);
    line(pos.x, pos.y, pos.x+l/2, pos.y-l/2);
    line(pos.x, pos.y, pos.x+l, pos.y+0);
  }
}
