PImage truco1;
PImage truco2;
PImage truco3;

PFont texto;

int posX= 640;
int posY= 480;

int ancho = 64;
int alto = 48;
int tamañotexto = 10;
int movimiento = 0;

boolean empujar = false;
boolean mostrarimagen= false;

int aparece = 0; 
int textoY;
int truco2X;

boolean subirtexto = false;
int tiempoimagen= 2;

color rojo= color(100,0,0);
color azul= color(0,0,200);
color negro= color(0);
color verde= color(0,255,0);

String mitexto1, mitexto2, mitexto3;


void setup() {
  size(640, 480);
 truco1 = loadImage("truco1.jpg");
  truco2 = loadImage("truco2.jpg");
  truco3 = loadImage("truco3.jpg");
  
  mitexto1= ("El truco es un juego de cartas donde \nlo importante es la astucia y el engaño. \nEs muy popular en Argentina, Uruguay, Paraguay y \n Brasil");
  mitexto2= ("El objetivo del juego es \n alcanzar 30 puntos. \nLos jugadores deben ganar \n manos usando jugadas \n especiales \n y persuadiendo a \n sus oponentes." );
  mitexto3= ("Se juega en parejas o uno vs uno, con tres cartas \n por jugador. \n Hay jerarquías de cartas y se pueden cantar \n jugadas como Truco, Envido o Flor, que pueden \n dar más puntos. La clave está en \n leer al rival y tomar riesgos");
  
  texto= loadFont("Verdana-BoldItalic-48.vlw");
  
  textAlign(CENTER, CENTER);
  textoY = height + 50;
}
void draw() {
  background(255);
  if (ancho >= width && alto >= height && tamañotexto >= 25) {
    if (!empujar) {
      empujar = true;
      aparece = frameCount;
    }
  }
  if (empujar && movimiento < width) {
    movimiento += 2;
  }
  if (empujar && !mostrarimagen) {
    
    image(truco2, 0,0, width, height);
    textAlign(posX= (-10)+ movimiento, posY= 0);
    fill(negro);
    textFont(texto);
    textSize(20); 
    text(mitexto2 ,posX/2,height / 2);
    
    if (frameCount - aparece >= 600) {
      mostrarimagen = true;
      subirtexto = true;
      tiempoimagen = frameCount;
    }
  }
  if (mostrarimagen) {
    image(truco3, 0, 0, width, height);
    if (subirtexto) {
      if (textoY > height / 2) {
        textoY -= 2;
      } else {
        textoY = height / 2;
        subirtexto = false;
      }
    }
    fill(negro);
    textFont(texto);
    textSize(20);
    textAlign(CENTER, CENTER);
    text(mitexto3, 300, textoY);
  
  }
  int x = (width - ancho) / 2 + movimiento;
  int y = (height - alto) / 2;
  image(truco1, x, y, ancho, alto);
  textFont(texto);
  textAlign(CENTER, CENTER);
  fill(negro);
  textSize(20);
  text(mitexto1, 300 + 1 +movimiento , 200 + 1+movimiento);
  if (ancho < width) ancho += 8;
  if (alto < height) alto += 3;
  if (tamañotexto < 25) tamañotexto += 1;

// Dibujar botón de reinicio
{
 // Mostrar el botón solo cuando todo terminó
  if (mostrarimagen && !subirtexto && frameCount - tiempoimagen > 300) {
    fill(0, 200, 0);
    rect(width - 120, height - 60, 100, 40, 10);
    fill(0);
    text("Reiniciar", width - 70, height - 40);
  }
}
}

void mousePressed() {
  // Verificar si se hizo clic en el botón de reinicio
  if (mouseX > width-120 && mouseX < width-20 && 
      mouseY > height-60 && mouseY < height-20) {
    // Reiniciar presentación
    ancho = 64;
    alto = 48;
    tamañotexto = 10;
    movimiento = 0;
    empujar = false;
    mostrarimagen = false;
    aparece = 0;
    textoY = height + 50;
    subirtexto = false;
    tiempoimagen = 0;
  }
}
