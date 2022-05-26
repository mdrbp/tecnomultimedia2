class Forma {
  int x1, x2, x3, x4, x5, y1, y2, y3, y4, y5, opacidad;
  color rojo, fuccia, negro, azul, celeste;
  int elegirColor;
  Forma(int x1_, int y1_, int x2_, int y2_, int x3_, int y3_, int x4_, int y4_, int x5_, int y5_) {

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

    rojo= color(177, 4, 6);
    negro= color(0);
    azul= color(6, 50, 109);
    celeste= color(113, 182, 211);
    fuccia= color(2160, 59, 117);
  }
  void dibujar(int opacidad_, int elegirColor_) {
    opacidad=opacidad_;
    elegirColor=elegirColor_;
    push();
    noStroke();
    if (elegirColor ==1) {
      tint(rojo, opacidad);
    } else if (elegirColor==2) {
      tint(negro, opacidad);
    } else if (elegirColor==3) {
      tint(fuccia, opacidad);
    } else if (elegirColor==4) {
      tint(celeste, opacidad);
    } else if (elegirColor==5) {
      tint(azul, opacidad);
    }
    //fill(255, 255, 255, opacidad);
    beginShape();
    texture(img);
    vertex(x1, y1,20,20);
    vertex(x2, y2,500,20);
    vertex(x3, y3,500,500);
    vertex(x4, y4 ,20,500);
    vertex(x5, y5,20,300);
    endShape(CLOSE);
    pop();
  }
}
