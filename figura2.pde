class Figura2 {
  int x1, x2, x3, x4, x5, y1, y2, y3, y4, y5;
  Figura2(int x1_, int x2_, int x3_, int x4_, int x5_, int y1_, int y2_, int y3_, int y4_,int y5_) {
    x1 =x1_;
    x2 = x2_;
    x3 = x3_;
    x4 = x4_;
    x5 = x5_;
    y1 = y1_;
    y2 = y2_;
    y3 = y3_;
    y4 = y4_;
    y5 = y5_;
  }
  void dibujar() {
    push();
    fill(255);
    noStroke();
    beginShape();
    vertex(x1, y2);
    vertex(x2, y2);
    vertex(x3, y3);
    vertex(x4, y4 );
    vertex(x5, y5);
    endShape(CLOSE);
    pop();
  }
}
