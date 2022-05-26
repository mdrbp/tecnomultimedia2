class Circulito {
  float posibilidad=random(100);
  float x, y, rot; 
  color rojo, negro;
  float tamano=(random(20, 30));
  int conteo=0, tiempo;
  String estado="inicio";
  Circulito() {
    rojo= color(177, 4, 6);
    negro= color(0);
  }

  void dibujar() {

   
    if ( amp<60 && amp>55 ) {
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
    if (estado.equals("primero")) {
      imagen(tamano, rot);
    } else if (estado.equals("cambia lugar")) {
      if (tiempo ==1) {
        posibilidad=random(100);
        rot=random(359);
        tamano=(random(10, 30));
      }
      imagen(tamano, rot);
    }
  }
  void imagen(float tamano_, float rot_) {
    rot=rot_;
    tamano=tamano_;
    push();
    translate(width/2, height/2);
    noStroke();
    imageMode(CENTER);
    rotate(radians(rot));
    if (posibilidad >20) {
      fill(negro);
    } else {
      fill(rojo);
    }
    ellipse(120, 200, tamano, tamano);
    pop();
  }
}
