class Rectangulo {
  float rot= (random(-30, 30));
  float posibilidad=random(100);
  float posibilidad1=random(100);
  float x=(random(60, 300));
  float y=(random(450, 550));
  float alto=(random (15, 25));
  float ancho=(random (90, 110));
  int elegir;

  int conteo=0, tiempo;
  String estado="inicio";
  Rectangulo() {
  }

  void dibujar() {
   println(conteo);
    if (amp>75&& pitch < 50.000 && millis()<marcaTiempo+ UMBRAL_TIEMPO ) {
      tiempo ++;
      if (tiempo == 1) {
        conteo++;
      }
    } else if (nohaysonido) {
      tiempo =0;
    }
    if (conteo==1) {
      estado = "primero";
    } else if (conteo==2) {
      estado = "cambia lugar";
    } else if (conteo>=3) {
      conteo=1;
    }
    if (estado.equals("inicio")) {
      elegir =int(random(1, 11));
    } else if (estado.equals("primero")) {
      rectangulo(elegir, x, y, ancho, alto, rot, posibilidad, posibilidad1);
      } else if (estado.equals("cambia lugar")) {
      if (tiempo ==1) {
        rot= (random(100));
        posibilidad=random(100);
        posibilidad1=random(100);
        x=(random(100, 300));
        y=(random(450, 600));
        alto=(random (15, 25));
        ancho=(random (90, 110));
        elegir =int(random(11));
      }
      rectangulo( elegir, x, y, ancho, alto, rot, posibilidad, posibilidad1);
    }
  }

  void rectangulo( int elegir_, float x_, float y_, float ancho_, float alto_, float rot_, float posibilidad_, float posibilidad1_) {
    elegir=elegir_;
    x=x_;
    y=y_;
    ancho=ancho_;
    alto=alto_;
    rot=rot_;
    posibilidad= posibilidad_;
    posibilidad1=posibilidad1_;

    if (elegir >=1 && elegir<=8) {
      if (posibilidad1>=20) {
        push();
        if (posibilidad<=20) {
          rotate(radians(rot));
        } else {
          rotate(0);
        }
        noStroke();
        fill(0);
        rect(x, y, ancho, alto);
        pop();
      } else if (elegir >=9 && elegir<=11) {
      } else if (posibilidad1<=20) {

        ele(x, y);
      }
    }
  }
  void ele(float x_, float y_) {
    x=x_;
    y=y_;
    push();
    noStroke();
    fill(0);
    rect(x, y-60, 20, 60);
    rect(x, y, 70, 20);
    pop();
  }
}
