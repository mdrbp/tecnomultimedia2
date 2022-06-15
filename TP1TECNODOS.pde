// María del Rosario Berro Párraga 81192/1,
import oscP5.*;
//estados
String   estadoPRINCIPAL;
//estados
float TiempoFinal;
PImage img;
float amp, pitch;
int ruido;
float UMBRAL_AMP =60;
float UMBRAL_RUIDO =100;
float  UMBRAL_TIEMPO=100;
boolean haySonido =false;
boolean nohaysonido =false;
boolean antesHabiaSonido =false;
long marcaTiempo;
//-------------gestor senial(variables de calibracion)-------------
float minimoPitch=47;
float maximoPitch=98;

float minimoAmp=50;
float maximoAmp=100;
float f= 0.9;
//----------importados
Final final_;
Circulo circulo;
Circulito circulito;
Linea linea;
GestorSenial gestorAmp;
GestorSenial gestorPitch;
OscP5 osc;
Cuadro cuadro;
Rectangulo rectangulo;
//----------importados
float x, y, tam=10;


void setup() {
  estadoPRINCIPAL= "inicioprograma1";
  size (600, 800, P2D);
  img = loadImage("graffiti.png");
  //----------INICIALIZAR
  linea = new Linea();
  circulito = new Circulito();
  circulo = new Circulo();
  gestorAmp= new GestorSenial(minimoAmp, maximoAmp, f);
  gestorPitch= new GestorSenial(minimoPitch, maximoPitch, f);
  final_= new Final();
  rectangulo = new Rectangulo();
  osc = new OscP5(this, 12345);
  cuadro = new Cuadro();
}
void draw() {
  background(227,226,222);  
  gestorAmp.actualizar(amp);
  haySonido = amp > UMBRAL_AMP;
  nohaysonido = amp <UMBRAL_AMP-15;

  boolean empezoElSonido = haySonido && !antesHabiaSonido;
  boolean terminoElSonido = !haySonido && antesHabiaSonido;

  if (empezoElSonido) {
    marcaTiempo=millis();
  }

  if (terminoElSonido) {
  }
  ////PRUEBA
  if (haySonido && estadoPRINCIPAL.equals("inicioprograma1")){
  estadoPRINCIPAL="inicioprograma";
  }
  ////
  if (estadoPRINCIPAL.equals("inicioprograma")) {
    cuadro.dibujar();
  } else if (estadoPRINCIPAL.equals("dibujando")) {
    cuadro.dibujar();
    rectangulo.dibujar();
    linea.dibujar();
    circulito.dibujar();
    final_.dibujar();
  }
  if (TiempoFinal >=1000){
  estadoPRINCIPAL ="obrareinicia";
  TiempoFinal =0;
  }
  if(estadoPRINCIPAL.equals("obrareinicia")){
  setup();
  }
  //I guess?
  antesHabiaSonido= haySonido;
}

void oscEvent( OscMessage m) {
  if (m.addrPattern().equals("/amp")) {

    amp = m.get(0).floatValue();
  }
  if (m.addrPattern().equals("/pitch")) {

    pitch = m.get(0).floatValue();

  }
  if (m.addrPattern().equals("/ruido")) {

    ruido = m.get(0).intValue();

  }
}

void mousePressed() {
  cuadro.click();
}
