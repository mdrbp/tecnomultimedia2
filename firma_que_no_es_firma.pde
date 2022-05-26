class Final {
  PImage firma;
  int elegir=int(random(1, 2));
  float x= random(60, 80);
  float y= random(100, 120);
  float x1= random(480, 500);
  float y1= random(680, 700);
  String estado = "inicio";
  Final() {
    firma= loadImage("firma.png");
  }
  void dibujar() {

    if (amp >80 &&  millis()<marcaTiempo+ UMBRAL_TIEMPO+3000) {
      estado = "dibujando";
    }

    if (estado.equals("dibujando")) {
      TiempoFinal++;
      if (elegir==1) {
        push();
        image(firma, x, y, 60, 60);
        pop();
      } else if (elegir==2) {
        push();
        image(firma, x1, y1, 60, 60);
        pop();
      }
    }
  }
}
