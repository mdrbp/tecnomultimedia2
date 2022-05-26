class Cuadro {
  PImage img;
  String estado = "inicio";
  int elegir=0;
  int tiempo;
  float mov3, mov4, mov5, mov6, mov7, lugar1, lugar2, lugar3, lugar4, lugar5;
  int cantidad, opacidad, opacidad1, opacidad2, opacidad3, opacidad4, vel, color1, color2, color3, color4, mov1, mov2; 
  //------- invocar------
  Forma forma1, forma2 ; 
  Cuadro() {        
    cantidad=0;
    //----------inicializar----------
    forma1 = new Forma (int (random(150, 200)), int (random(90, 130)), int (random(360, 420)), int (random(90, 130)), int (random(350, 400)), int (random(290, 350)), int (random(150, 190)), int (random(290, 350)), int (random(190, 230)), int (random(210, 290)));
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
    opacidad=70;
    opacidad1=70;
    opacidad2=70;
    opacidad3=70;
    opacidad4=70;
    vel=2;
    //horizontal
    mov1=2;
    mov2=2;
    //vertical
    mov3=2;
    mov4=1;
    mov5=2;
    mov6=2;
    mov7=1;
  }
  void dibujar() {
    if ( haySonido && pitch<70 && pitch>50) {
      tiempo ++;
      if (tiempo == 1) { 
        cantidad ++;
      }
    } else if (nohaysonido) {
      tiempo =0;
    }
    if (elegir == 1) {
      estado = "vertical1";
    } else if (elegir == 2) {
      estado = "horizontal1";
    } else if (elegir == 3) {
      estado = "vertical2";
    } else if (elegir == 4) {
      estado = "vertical3";
    } else if (elegir == 5) {
      estado = "horizontal2";
    } else if (elegir == 6) {
      estado = "horizontal3";
    } else if (elegir == 7) {
      estado = "horizontal4";
    }
    if (cantidad== 0) {

      estado="inicio";
    }
    if (estado.equals("inicio")) {
      elegir = int( random (7));
     
    }


    /////VERTICAL 1/////
    push();
    if (cantidad==1 &&estado.equals ("vertical1")) {  

      if ( haySonido && pitch<70 && pitch>50 ) {      
        opacidad =opacidad + vel ;
      }
      if (opacidad>220) {
        vel =vel * -1;
      } else if (opacidad <70) {
        vel =vel * -1;
      }

      translate(0, -30);
      forma1.dibujar(opacidad, color1);
    } else if (cantidad==2 && estado.equals("vertical1")) {
      if (haySonido && pitch<70 && pitch>50) {      
        opacidad1 =opacidad1 + vel ;
      }
      if (opacidad1>220) {
        vel =vel * -1;
      } else if (opacidad1 <70) {
        vel =vel * -1;
      }
      translate(0, -30);
      forma1.dibujar(opacidad, color1);
      translate(0, 100);
      forma1.dibujar(opacidad1, color2);
    } else if (cantidad==3 && estado.equals("vertical1")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad2 =opacidad2 + vel ;
      }
      if (opacidad2>220) {
        vel =vel * -1;
      } else if (opacidad2 <70) {
        vel =vel * -1;
      }
      translate(0, -30);
      forma1.dibujar(opacidad, color1);
      translate(0, 100);
      forma1.dibujar(opacidad1, color2);
      translate(0, 100);
      forma1.dibujar(opacidad2, color3);
    } else if (cantidad==4 && estado.equals("vertical1")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad3 =opacidad3 + vel ;
      }
      if (opacidad3>220) {
        vel =vel * -1;
      } else if (opacidad3 <70) {
        vel =vel * -1;
      }
      translate(0, -30);
      forma1.dibujar(opacidad, color1);
      translate(0, 100);
      forma1.dibujar(opacidad1, color2);
      translate(0, 100);
      forma1.dibujar(opacidad2, color3);
      translate(0, 100);
      forma1.dibujar(opacidad3, color4);
    } else if (cantidad==5 && estado.equals("vertical1")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad4 =opacidad4 + vel ;
      }
      if (opacidad4>220) {
        vel =vel * -1;
      } else if (opacidad4 <70) {
        vel =vel * -1;
      }
      translate(0, -30);
      forma1.dibujar(opacidad, color1);
      translate(0, 100);
      forma1.dibujar(opacidad1, color2);
      translate(0, 100);
      forma1.dibujar(opacidad2, color3);
      translate(0, 100);
      forma1.dibujar(opacidad3, color4);
      translate(0, 100);
      forma1.dibujar(opacidad4, color2);
    } else if (cantidad >=6 && estado.equals("vertical1")) {  ///MOVIMIENTO

      if (haySonido && pitch<70 && pitch>50) {
        lugar1 = lugar1-mov3;  
        lugar2=lugar2+mov4;
        lugar3=lugar3-mov5;
        lugar4=lugar4-mov6;  
        lugar5=lugar5-mov7;
      }

      if (lugar1<-50) {
        mov3=mov3*-1;
      } else if (lugar1>=50) {
        mov3=mov3*-1;
      }
      if (lugar2>25) {
        mov4=mov4*-1;
      } else if (lugar2<=-25) {
        mov4=mov4*-1;
      }
      if (lugar3<-50) {
        mov5=mov5*-1;
      } else if (lugar3>=50) {
        mov5=mov5*-1;
      }
      if (lugar4<-50) {
        mov6=mov6*-1;
      } else if (lugar4>=50) {
        mov6=mov6*-1;
      }
      if (lugar5<-25) {
        mov7=mov7*-1;
      } else if (lugar5>=25) {
        mov7=mov7*-1;
      }


      translate(lugar1, -30);
      forma1.dibujar(opacidad, color1);
      noFill();
      arc(250+lugar2, 200, 200, 200, radians(340), radians(370), OPEN);
      translate(lugar2, 100);

      forma1.dibujar(opacidad1, color2);

      translate(lugar3, 100);
      forma1.dibujar(opacidad2, color3);

      translate(lugar4, 100);
      forma1.dibujar(opacidad3, color4);

      translate(lugar5, 100);
      forma1.dibujar(opacidad4, color2);
      
      //NUEVO ESTADO
      estadoPRINCIPAL= "dibujando";
    }

    /////VERTICAL 2/////
    if (cantidad==1 &&estado.equals ("vertical2")) {  

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad =opacidad + vel ;
      }
      if (opacidad>220) {
        vel =vel * -1;
      } else if (opacidad <70) {
        vel =vel * -1;
      }

      translate(0, 30);
      forma1.dibujar(opacidad, color1);
    } else if (cantidad==2 && estado.equals("vertical2")) {
      if (haySonido && pitch<70 && pitch>50) {      
        opacidad1 =opacidad1 + vel ;
      }
      if (opacidad1>220) {
        vel =vel * -1;
      } else if (opacidad1 <70) {
        vel =vel * -1;
      }
      translate(0, 30);
      forma1.dibujar(opacidad, color1);
      translate(0, 120);
      forma1.dibujar(opacidad1, color2);
    } else if (cantidad==3 && estado.equals("vertical2")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad2 =opacidad2 + vel ;
      }
      if (opacidad2>220) {
        vel =vel * -1;
      } else if (opacidad2 <70) {
        vel =vel * -1;
      }
      translate(0, 30);
      forma1.dibujar(opacidad, color1);
      translate(0, 120);
      forma1.dibujar(opacidad1, color2);
      translate(0, 120);
      forma1.dibujar(opacidad2, color3);
    } else if (cantidad >=4&& estado.equals("vertical2")) {  ///CUANDO SE EMPIEZA A MOVER

      if (haySonido && pitch<70 && pitch>50) {
        lugar1 = lugar1-mov1;
        lugar2 = lugar2+mov1;
        lugar3= lugar3 +mov2;
      }
      if (lugar1<-100) {
        mov1=mov1*-1;
      } else if (lugar1>=100) {
        mov1=mov1*-1;
      }
      if (lugar3>100) {
        mov2=mov2*-1;
      } else if (lugar3<=-100) {
        mov2=mov2*-1;
      }


      translate(lugar1, 30);
      noFill();
      arc(250+lugar2, 200, 200, 200, radians(340), radians(370), OPEN);
      forma1.dibujar(opacidad, color1);
      translate(lugar2, 120);
      forma1.dibujar(opacidad1, color2);
      translate(lugar3, 120);
      forma1.dibujar(opacidad2, color3);

           //NUEVO ESTADO
      estadoPRINCIPAL= "dibujando";
    }

    /////VERTICAL 3/////

    if (cantidad==1 &&estado.equals ("vertical3")) {  

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad =opacidad + vel ;
      }
      if (opacidad>220) {
        vel =vel * -1;
      } else if (opacidad <70) {
        vel =vel * -1;
      }

      translate(110, -90);
      forma2.dibujar(opacidad, color1);
    } else if (cantidad==2 && estado.equals("vertical3")) {
      if (haySonido && pitch<70 && pitch>50) {      
        opacidad1 =opacidad1 + vel ;
      }
      if (opacidad1>220) {
        vel =vel * -1;
      } else if (opacidad1 <70) {
        vel =vel * -1;
      }
      translate(110, -90);
      forma2.dibujar(opacidad, color1);
      translate(0, 120);
      forma2.dibujar(opacidad1, color2);
    } else if (cantidad==3 && estado.equals("vertical3")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad2 =opacidad2 + vel ;
      }
      if (opacidad2>220) {
        vel =vel * -1;
      } else if (opacidad2 <70) {
        vel =vel * -1;
      }
      translate(110, -90);
      forma2.dibujar(opacidad, color1);
      translate(0, 120);
      forma2.dibujar(opacidad1, color2);
      translate(0, 120);
      forma2.dibujar(opacidad2, color3);
    } else if (cantidad >=4&& estado.equals("vertical3")) {  ///CUANDO SE EMPIEZA A MOVER

      if (haySonido && pitch<70 && pitch>50) {
        lugar1 = lugar1-mov1;
        lugar2 = lugar2+mov1;
        lugar3= lugar3 +mov2;
      }
      if (lugar1<-100) {
        mov1=mov1*-1;
      } else if (lugar1>=100) {
        mov1=mov1*-1;
      }
      if (lugar3>100) {
        mov2=mov2*-1;
      } else if (lugar3<=-100) {
        mov2=mov2*-1;
      }


      translate(110+lugar1, -90);  
      forma2.dibujar(opacidad, color1);
      translate(lugar2, 120);
      noFill();
      arc(120, 200, 200, 200, radians(340), radians(370), OPEN);
      forma2.dibujar(opacidad1, color2);
      translate(lugar3, 120);
      forma2.dibujar(opacidad2, color3);
      
           //NUEVO ESTADO
      estadoPRINCIPAL= "dibujando";
    }
    //// HORIZONTAL 1 /////
    if (cantidad==1 &&estado.equals ("horizontal1")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad =opacidad + vel ;
      }
      if (opacidad>220) {
        vel =vel * -1;
      } else if (opacidad <70) {
        vel =vel * -1;
      }

      forma2.dibujar(opacidad, color1);
    } else if (cantidad==2 && estado.equals("horizontal1")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad1 =opacidad1 + vel ;
      }
      if (opacidad1>220) {
        vel =vel * -1;
      } else if (opacidad1 <70) {
        vel =vel * -1;
      }
      forma2.dibujar(opacidad, color1);
      translate(120, 0);
      forma2.dibujar(opacidad1, color2);
    } else if (cantidad==3 && estado.equals("horizontal1")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad2 =opacidad2 + vel ;
      }
      if (opacidad2>220) {
        vel =vel * -1;
      } else if (opacidad2 <70) {
        vel =vel * -1;
      }
      forma2.dibujar(opacidad, color1);
      translate(120, 0);
      forma2.dibujar(opacidad1, color2);
      translate(120, 0);
      forma2.dibujar(opacidad2, color3);
    } else if (cantidad >=4&& estado.equals("horizontal1")) {  ///CUANDO SE EMPIEZA A MOVER

      if (haySonido && pitch<70 && pitch>50) {
        lugar1 = lugar1-mov1;
        lugar2 = lugar2+mov1;
        lugar3= lugar3 +mov2;
      }
      if (lugar1<-100) {
        mov1=mov1*-1;
      } else if (lugar1>=100) {
        mov1=mov1*-1;
      }
      if (lugar3>100) {
        mov2=mov2*-1;
      } else if (lugar3<=-100) {
        mov2=mov2*-1;
      }


      translate(0, lugar1);

      forma2.dibujar(opacidad, color1);
      translate(120, lugar2);
      forma2.dibujar(opacidad1, color2);
      translate(120, lugar3);
      noFill();
      arc(100, 200, 200, 200, radians(340), radians(370), OPEN);
      forma2.dibujar(opacidad2, color3);
      
           //NUEVO ESTADO
      estadoPRINCIPAL= "dibujando";
    }
    //// HORIZONTAL 2 /////
    if (cantidad==1 &&estado.equals ("horizontal2")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad =opacidad + vel ;
      }
      if (opacidad>220) {
        vel =vel * -1;
      } else if (opacidad <70) {
        vel =vel * -1;
      }
      translate(-130, 160);
      forma1.dibujar(opacidad, color1);
    } else if (cantidad==2 && estado.equals("horizontal2")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad1 =opacidad1 + vel ;
      }
      if (opacidad1>220) {
        vel =vel * -1;
      } else if (opacidad1 <70) {
        vel =vel * -1;
      }
      translate(-130, 160);
      forma1.dibujar(opacidad, color1);
      translate(120, 0);
      forma1.dibujar(opacidad1, color2);
    } else if (cantidad==3 && estado.equals("horizontal2")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad2 =opacidad2 + vel ;
      }
      if (opacidad2>220) {
        vel =vel * -1;
      } else if (opacidad2 <70) {
        vel =vel * -1;
      }
      translate(-130, 160);
      forma1.dibujar(opacidad, color1);
      translate(120, 0);
      forma1.dibujar(opacidad1, color2);
      translate(120, 0);
      forma1.dibujar(opacidad2, color3);
    } else if (cantidad >=4&& estado.equals("horizontal2")) {  ///CUANDO SE EMPIEZA A MOVER

      if (haySonido && pitch<70 && pitch>50) {
        lugar1 = lugar1-mov1;
        lugar2 = lugar2+mov1;
        lugar3= lugar3 +mov2;
      }
      if (lugar1<-100) {
        mov1=mov1*-1;
      } else if (lugar1>=100) {
        mov1=mov1*-1;
      }
      if (lugar3>100) {
        mov2=mov2*-1;
      } else if (lugar3<=-100) {
        mov2=mov2*-1;
      }


      translate(-130, 160+ lugar1);
      forma1.dibujar(opacidad, color1);
      translate(120, lugar2);
      noFill();
      arc(330, 100+lugar2, 200, 200, radians(340), radians(370), OPEN);
      forma1.dibujar(opacidad1, color2);
      translate(120, lugar3);
      forma1.dibujar(opacidad2, color3);

           //NUEVO ESTADO
      estadoPRINCIPAL= "dibujando";
    }

    //// HORIZONTAL 3 /////

    if (cantidad==1 &&estado.equals ("horizontal3")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad =opacidad + vel ;
      }
      if (opacidad>220) {
        vel =vel * -1;
      } else if (opacidad <=70) {
        vel =vel * -1;
      }
      translate(-40, -20);
      forma2.dibujar(opacidad, color1);
    } else if (cantidad==2 && estado.equals("horizontal3")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad1 =opacidad1 + vel ;
      }
      if (opacidad1>220) {
        vel =vel * -1;
      } else if (opacidad1 <=70) {
        vel =vel * -1;
      }
      translate(-40, -20);
      forma2.dibujar(opacidad, color1);
      translate(100, 0);
      forma2.dibujar(opacidad1, color2);
    } else if (cantidad==3 && estado.equals("horizontal3")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad2 =opacidad2 + vel ;
      }
      if (opacidad2>220) {
        vel =vel * -1;
      } else if (opacidad2 <=70) {
        vel =vel * -1;
      }
      translate(-40, -20);
      forma2.dibujar(opacidad, color1);
      translate(100, 0);
      forma2.dibujar(opacidad1, color2);
      translate(100, 0);
      forma2.dibujar(opacidad2, color3);
    } else if (cantidad==4 && estado.equals("horizontal3")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad3 =opacidad3 + vel ;
      }
      if (opacidad3>220) {
        vel =vel * -1;
      } else if (opacidad3 <=70) {
        vel =vel * -1;
      }
      translate(-40, -20);
      forma2.dibujar(opacidad, color1);
      translate(100, 0);
      forma2.dibujar(opacidad1, color2);
      translate(100, 0);
      forma2.dibujar(opacidad2, color3);
      translate(100, 0);
      forma2.dibujar(opacidad3, color4);
    } else if (cantidad >=5&& estado.equals("horizontal3")) {  ///CUANDO SE EMPIEZA A MOVER

      if (haySonido && pitch<70 && pitch>50) {
        lugar1 = lugar1-mov3;  
        lugar2=lugar2+mov4;
        lugar3=lugar3-mov5;
        lugar4=lugar4-mov6;
      }

      if (lugar1<-50) {
        mov3=mov3*-1;
      } else if (lugar1>=50) {
        mov3=mov3*-1;
      }
      if (lugar2>25) {
        mov4=mov4*-1;
      } else if (lugar2<=-25) {
        mov4=mov4*-1;
      }
      if (lugar3<-50) {
        mov5=mov5*-1;
      } else if (lugar3>=50) {
        mov5=mov5*-1;
      }
      if (lugar4<-50) {
        mov6=mov6*-1;
      } else if (lugar4>=50) {
        mov6=mov6*-1;
      }

      translate(-40, lugar1-20);
      forma2.dibujar(opacidad, color1);
      translate(100, lugar2);
      forma2.dibujar(opacidad1, color2);
      translate(100, lugar3);
      forma2.dibujar(opacidad2, color3);   
      translate(100, lugar4);
      forma2.dibujar(opacidad3, color4);
      
           //NUEVO ESTADO
      estadoPRINCIPAL= "dibujando";
    }
    //// HORIZONTAL 4 /////
    if (cantidad==1 &&estado.equals ("horizontal4")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad =opacidad + vel ;
      }
      if (opacidad>220) {
        vel =vel * -1;
      } else if (opacidad <70) {
        vel =vel * -1;
      }
      translate(-130, 140);
      forma1.dibujar(opacidad, color1);
    } else if (cantidad==2 && estado.equals("horizontal4")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad1 =opacidad1 + vel ;
      }
      if (opacidad1>220) {
        vel =vel * -1;
      } else if (opacidad1 <70) {
        vel =vel * -1;
      }
      translate(-130, 140);
      forma1.dibujar(opacidad, color1);
      translate(100, 0);
      forma1.dibujar(opacidad1, color2);
    } else if (cantidad==3 && estado.equals("horizontal4")) {

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad2 =opacidad2 + vel ;
      }
      if (opacidad2>220) {
        vel =vel * -1;
      } else if (opacidad2 <70) {
        vel =vel * -1;
      }
      translate(-130, 140);
      forma1.dibujar(opacidad, color1);
      translate(100, 0);
      forma1.dibujar(opacidad1, color2);
      translate(100, 0);
      forma1.dibujar(opacidad2, color3);
    } else if (cantidad ==4&& estado.equals("horizontal4")) {  ///CUANDO SE EMPIEZA A MOVER

      if (haySonido && pitch<70 && pitch>50) {      
        opacidad3 =opacidad3 + vel ;
      }
      if (opacidad3>220) {
        vel =vel * -1;
      } else if (opacidad2 <70) {
        vel =vel * -1;
      }
      translate(-130, 140);
      forma1.dibujar(opacidad, color1);
      translate(100, 0);
      forma1.dibujar(opacidad1, color2);
      translate(100, 0);
      forma1.dibujar(opacidad2, color3);
      translate(100, 0);
      forma1.dibujar(opacidad3, color4);
    } else if (cantidad >=5&& estado.equals("horizontal4")) {  ///CUANDO SE EMPIEZA A MOVER

      if (haySonido && pitch<70 && pitch>50) {
        lugar1 = lugar1-mov3;  
        lugar2=lugar2+mov4;
        lugar3=lugar3-mov5;
        lugar4=lugar4-mov6;
      }

      if (lugar1<-50) {
        mov3=mov3*-1;
      } else if (lugar1>=50) {
        mov3=mov3*-1;
      }
      if (lugar2>25) {
        mov4=mov4*-1;
      } else if (lugar2<=-25) {
        mov4=mov4*-1;
      }
      if (lugar3<-50) {
        mov5=mov5*-1;
      } else if (lugar3>=50) {
        mov5=mov5*-1;
      }
      if (lugar4<-50) {
        mov6=mov6*-1;
      } else if (lugar4>50) {
        mov6=mov6*-1;
      }

      translate(-130, 140+lugar1);
      noFill();
      arc(130, 100, 200, 200, radians(340), radians(370), OPEN);
      forma1.dibujar(opacidad, color1);
      translate(100, lugar2);
      forma1.dibujar(opacidad1, color2);
      translate(100, lugar3);
      forma1.dibujar(opacidad2, color3);
      translate(100, lugar4);
      forma1.dibujar(opacidad3, color4);
      
           //NUEVO ESTADO
      estadoPRINCIPAL= "dibujando";
    }
    pop();
  }


  void click() {
    cantidad ++;
  }
}
