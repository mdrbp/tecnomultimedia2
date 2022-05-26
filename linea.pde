class Linea {
  Circulo circulo;
  int x = 0;
  int y = 0;
  float rot = random(359);
  float varia = random(-50, 50);
  float posibilidad = random(100);
  float largoE = random(-10, 50);
  float ejeX = 120;
  float ejeY=200;
  String estado = "inicio";
  int conteo=0, tiempo;
  Linea() {
    circulo = new Circulo();
  }

  void dibujar() {
    if (pitch >80) {
      tiempo ++;
      println(pitch);
    } else if (nohaysonido) {
      tiempo=0;
      
    }
    if (tiempo==1) {
      conteo++;
    }
    if (conteo ==0) {
      estado = "inicio";
    } else if (conteo>=1) {
      estado= "dibujando";
    }

    if (estado.equals("dibujando")) {
      push();
      translate(width/2, height/2);
      imageMode(CENTER);
      if (pitch >80) {
        rot++;
      }
      rotate(radians(rot));
      strokeWeight(2);
      stroke(0);
      line(0, 0, ejeX, ejeY);
      line(200+varia, 90+varia, ejeX, ejeY);

      if (posibilidad>10) {
        ellipse(ejeX, ejeY, 1, 1);
        circulo.dibujar(ejeX, ejeY);
      } else {
        circuloFijo();
      }
      pop();
    }
  }

  void circuloFijo() {
    push();
    noStroke();
    circulo.imagen(100, 300);
    pop();
  }
}
