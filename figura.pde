class Figura {
  int opacidad, y;
  int [] posicionX;
  String estadoFigura;
  int elegir;
  Figura2 figura2, figura3;
  Figura() {
    estadoFigura = "inicio";
    figura2 = new Figura2 (int (random(170, 220)), int (random(45, 90)), int (random(360, 420)), int (random(45, 90)),int (random(360, 420)),int (random(230, 290)),int (random(170, 220)),int (random(230, 290)),int (random(170, 220)),int (random(230, 290)));
    figura3 = new Figura2 (int (random(170, 220)), int (random(45, 90)), int (random(360, 420)), int (random(45, 90)),int (random(360, 420)),int (random(230, 290)),int (random(170, 220)),int (random(230, 290)),int (random(170, 220)),int (random(230, 290)));
    elegir = int( random (1, 2));
    println(estadoFigura);
    println(elegir);
    
  }
  void dibujar() {
    if (elegir == 1) {
      estadoFigura = "vertical";
    } else if (elegir ==2) {
      estadoFigura = "horizontal";
    }
  }

  void click() {
    if (estadoFigura.equals ("vertical")) {
      figura2.dibujar();
    } else if (estadoFigura.equals ("horizontal")) {
      figura3.dibujar();
    }
  }
}
