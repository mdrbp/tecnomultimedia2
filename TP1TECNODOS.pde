// María del Rosario Berro Párraga 81192/1,
//Sosa Yamila 78604/5
//Quispe Enzo 80504/2
Cuadro cuadro;
float x, y, tam=10;


void setup() {
  size (600, 800);

  cuadro = new Cuadro();
}
void draw() {
  background(225);  
  cuadro.dibujar();
 
}
void mousePressed() {
  cuadro.click();
}

void mouseClicked() {
}
