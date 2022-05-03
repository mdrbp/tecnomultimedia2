class Figura{
int opacidad, y;
int [] posicionX;
String estadoFigura;
 Figura(){
   estadoFigura = "vertical";
    posicionX= new int [3];
    posicionX[]= 
  }
 void dibujar(){
   posicionX =  int(random(20,200));
  if (x == 20){
    y = 400;
  }else if(x==200){
  y= 50;
  }
   circle(x,y,60);
 }
 void click(){
   
 }
}
