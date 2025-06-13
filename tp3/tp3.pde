//TP3- IPMI
//Kani Aranda
//video: https://www.youtube.com/watch?v=gJ6ePuQGgYw

PImage referencia;
int columnas = 3;
int filas = 3;
float cuadrado = 402 / 3;
color azul = color(14, 19, 232);
color negro = color(0);
color blanco= color(255);
float valor= 0;
float valorAnt;
boolean coloresinvertidos= false;
boolean puedeinvertir= true;
boolean cruzar= false;


void setup() {
  size(800, 400);
  noStroke();
  referencia= loadImage("referencia.jpeg");
}
void draw() {
  background(blanco);
  image(referencia, 0, 0, 400, 400);
  valor= map(mouseX, width/2, width, 0, 1);

  if (valorAnt< 0.5 && valor>= 0.5 && !cruzar) {
    color invertir= azul;
    azul= negro;
    negro= invertir;
    cruzar= true;
  }
  if (valorAnt> 0.5 && valor<= 0.5) {
    cruzar= false;
  }
  valorAnt= valor;
    
  println("x" + mouseX+  "y" + mouseY);
  cuadrados(0,0,0);
}

void mouseMoved() {
  if (mouseX< pmouseX && mouseX< 600 && puedeinvertir) {
    color invertir= azul;
    azul= negro;
    negro= invertir;

    coloresinvertidos= !coloresinvertidos;
    puedeinvertir= false;
  }
  if (mouseX>600) {
    puedeinvertir= true;
  }
}

void keyPressed() {
  if (key== 'C'|| key== 'c') {
    azul= color(random(255), random(255), random(255));
  }
  if (key== 'A'|| key== 'a') {
    negro= color(random(255), random(255), random(255));
  }
  if(key== 'R'|| key== 'r'){
    reiniciar();
  }
}
  
