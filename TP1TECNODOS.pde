// María del Rosario Berro Párraga 81192/1,
//Sosa Yamila 78604/5
Cuadro cuadro;
float x, y, tam=10;


void setup() {
  size (600, 800);

  cuadro = new Cuadro();
}
void draw() {
  background(225);  
  cuadro.dibujar();
  if ((mouseX>0)&&(mouseX<599+50)&&
    (mouseY>0)&&(mouseY<599+50&&mousePressed)) {   
    x = random(1, 599);
    y = random(1, 599);
    ellipse(x, y, tam, tam);
  }
}
void mousePressed() {
  cuadro.click();
}

void mouseClicked() {
}
