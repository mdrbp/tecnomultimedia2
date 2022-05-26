class Circulo {
  float posibilidad=random(100);
  float posibilidad1=random(100);
  float ejeX, ejeY, rot; 
  int elegir= int(random(1, 3));
  color rojo, negro;
  PImage[] spray;
  float tamano=(random(200, 240));
  int conteo=0, tiempo;
  String estado="inicio";
  Circulo() {
    spray = new PImage[4];
    spray[1]= loadImage("circulo1.png");
    spray[2]= loadImage("circulo2.png");
    spray[3]= loadImage("circulo3.png");
    ///tinte
    rojo= color(177, 4, 6);
    negro= color(0);
  }

  void dibujar(float ejeX_, float ejeY_) {

    ejeX=ejeX_;
    ejeY=ejeY_;
    println(conteo);
    if ( amp>80 ) {
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

      elegir =int(random(1, 3));
    } else if (estado.equals("primero")) {
      imagen(ejeX, ejeY);
    } else if (estado.equals("cambia lugar")) {
      if (tiempo ==1) {
        posibilidad=random(100);
        elegir =int(random(1, 3));
        tamano=(random(200, 240));
      }
      imagen(ejeX, ejeY);
    }
  }
  void imagen(float ejeX_, float ejeY_) {
    ejeX = ejeX_;
    ejeY = ejeY_;
    pushStyle();
    imageMode(CENTER);
    if (posibilidad >20) {
      tint(negro);
    } else {
      tint(rojo);
    }
    image(spray[elegir], ejeX, ejeY, tamano, tamano);
    popStyle();
  }
}
