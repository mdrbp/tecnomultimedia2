class Cuadro {

  String estado = "inicio";
  int elegir=0;
  Forma forma1, forma2 ; 
  float mov5,lugar4;
  int cantidad, opacidad, opacidad1, opacidad2, opacidad3, opacidad4, vel, color1, color2, color3, color4, mov1, mov2, mov3, mov4, lugar1, lugar2, lugar3; 
  Cuadro() {        
    cantidad=0;
    forma1 = new Forma (int (random(170, 220)), int (random(90, 130)), int (random(360, 420)), int (random(105, 150)), int (random(350, 400)), int (random(290, 350)), int (random(160, 200)), int (random(290, 350)), int (random(200, 220)), int (random(240, 290)));
    forma2 = new Forma  (int (random(90, 120)), int (random(190, 220)), int (random(230, 250)), int (random(210, 240)), int (random(220, 240)), int (random(500, 530)), int (random(90, 110)), int (random(500, 530)), int (random(110, 130)), int (random(450, 470)));



    //// elección de colores
    color1=int( random (1, 3));
    if (color1==1) {
      color2=int( random  (2, 3));
    } else if (color1==2) {
      color2=1;
    }

    if (color2==2) {
      color3=3;
    } else if (color2==3) {
      color3=2;
    } else if (color2==1) {
      color3=4;
    }
    if (color3==4) {
      color4=int( random  (1, 3));
    } else if (color3 ==3) {
      color4=5;
    } else {
      color4=int( random  (1, 5));
    }
    // fin de elección de colores
    opacidad=30;
    opacidad1=30;
    opacidad2=30;
    opacidad3=30;
    vel=2;
    //horizontal
    mov1=2;
    mov2=2;
    //vertical
    mov3=2;
    mov4=2;
    mov5=4;
    
    
  }
  void dibujar() {
    //println(cantidad);
    println(opacidad2);
    if (elegir == 1) {
      estado = "vertical";
    } else if (elegir == 2) {
      estado = "horizontal";
    }
    if (cantidad== 0) {
      estado="inicio";
    }
    if (estado.equals("inicio")) {
      elegir = int( random (1, 3));
    }
    if (cantidad==1 &&estado.equals ("vertical")) {  

      if (mousePressed) {      
        opacidad =opacidad + vel ;
      }
      if (opacidad>150) {
        vel =vel * -1;
      } else if (opacidad <30) {
        vel =vel * -1;
      }


      forma1.dibujar(opacidad, color1);
    } else if (cantidad==1 &&estado.equals ("horizontal")) {

      if (mousePressed) {      
        opacidad =opacidad + vel ;
      }
      if (opacidad>150) {
        vel =vel * -1;
      } else if (opacidad <30) {
        vel =vel * -1;
      }
         
      forma2.dibujar(opacidad, color1);
    }
    //vertical
    if (cantidad==2 && estado.equals("vertical")) {
      if (mousePressed) {      
        opacidad1 =opacidad1 + vel ;
      }
      if (opacidad1>150) {
        vel =vel * -1;
      } else if (opacidad1 <30) {
        vel =vel * -1;
      }
      forma1.dibujar(opacidad, color1);
      translate(0, 120);
      forma1.dibujar(opacidad1, color2);
    } else if (cantidad==3 && estado.equals("vertical")) {

      if (mousePressed) {      
        opacidad2 =opacidad2 + vel ;
      }
      if (opacidad2>150) {
        vel =vel * -1;
      } else if (opacidad2 <30) {
        vel =vel * -1;
      }
      forma1.dibujar(opacidad, color1);
      translate(0, 120);
      forma1.dibujar(opacidad1, color2);
      translate(0, 120);
      forma1.dibujar(opacidad2, color3);
    } else if (cantidad==4 && estado.equals("vertical")) {

      if (mousePressed) {      
        opacidad3 =opacidad3 + vel ;
      }
      if (opacidad3>150) {
        vel =vel * -1;
      } else if (opacidad3 <30) {
        vel =vel * -1;
      }
      forma1.dibujar(opacidad, color1);
      translate(0, 110);
      forma1.dibujar(opacidad1, color2);
      translate(0, 110);
      forma1.dibujar(opacidad2, color3);
      translate(0, 110);
      forma1.dibujar(opacidad3, color4);
    } else if (cantidad >=5 && estado.equals("vertical")) {  ///MOVIMIENTO

      if (mousePressed) {
        lugar1 = lugar1-mov3;  
        lugar2=lugar2+mov4;
        lugar4=lugar4-mov5;
      }
      
      if (lugar1<-50) {
        mov3=mov3*-1;
      } else if (lugar1>50) {
        mov3=mov3*-1;
      }
        
      if (lugar2>50) {
        mov4=mov4*-1;
      } else if (lugar2<-50) {
        mov4=mov4*-1;
      }
      if (lugar4<-100) {
        mov5=mov5*-1;
      } else if (lugar4>100) {
        mov5=mov5*-1;
      }
      push();
      translate(lugar1, 0);
      forma1.dibujar(opacidad, color1);
      pop();
      push();
      translate(lugar2, 110);
      forma1.dibujar(opacidad1, color2);
      pop();
      push();
      translate(lugar1, 220);
      forma1.dibujar(opacidad2, color3);
      pop();
      push();
      translate(lugar4, 330);
      forma1.dibujar(opacidad3, color4);
      pop();
    }

    //horizontal

    if (cantidad==2 && estado.equals("horizontal")) {

      if (mousePressed) {      
        opacidad1 =opacidad1 + vel ;
      }
      if (opacidad1>150) {
        vel =vel * -1;
      } else if (opacidad1 <30) {
        vel =vel * -1;
      }
      forma2.dibujar(opacidad, color1);
      translate(120, 0);
      forma2.dibujar(opacidad1, color2);
    } else if (cantidad==3 && estado.equals("horizontal")) {

      if (mousePressed) {      
        opacidad2 =opacidad2 + vel ;
      }
      if (opacidad2>150) {
        vel =vel * -1;
      } else if (opacidad2 <30) {
        vel =vel * -1;
      }
      forma2.dibujar(opacidad, color1);
      translate(120, 0);
      forma2.dibujar(opacidad1, color2);
      translate(120, 0);
      forma2.dibujar(opacidad2, color3);
    } else if (cantidad >=4&& estado.equals("horizontal")) {  ///CUANDO SE EMPIEZA A MOVER

      if (mousePressed) {
        lugar1 = lugar1-mov1;
        lugar2 = lugar2+mov1;
        lugar3= lugar3 +mov2;
      }
      if (lugar1<-100) {
        mov1=mov1*-1;
      } else if (lugar1>100) {
        mov1=mov1*-1;
      }
      if (lugar3>100) {
        mov2=mov2*-1;
      } else if (lugar3<-100) {
        mov2=mov2*-1;
      }


      translate(0, lugar1);
      forma2.dibujar(opacidad, color1);
      translate(120, lugar2);
      forma2.dibujar(opacidad1, color2);
      translate(120, lugar3);
      forma2.dibujar(opacidad2, color3);
    }
  }


  void click() {
    cantidad++;
  }
}
