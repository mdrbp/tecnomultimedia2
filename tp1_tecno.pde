// María del Rosario Berro Párraga 81192/1,
Figura figura;
void setup() {
  size (600, 800);
  background(0);
  figura = new Figura();
}
void draw() {
  figura.dibujar();
  println(mouseX,mouseY);
}
void mousePressed() {
  figura.click();
}
