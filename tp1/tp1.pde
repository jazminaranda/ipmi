PImage img;

//tp1
//jazmin aranda
//com2

void setup(){
  size(800,400);
  background(#EAEAE3);
img=loadImage("img.jpg");
}

void draw(){
  image(img,0,0,400,400);
  noStroke();
  fill(#BC6E39);
 rect(400,250,400,150); //fondo marron que simula la mesa
  noFill();
  fill(#A0643C);
  rect(416,250,358,50,10); //rectangulo que simula la sombra
  noFill();
  fill(70);
  rect(15+400,132,360,150,15); //cuerpo del objeto, rectangulo principal
  noFill();
  noStroke();
  fill(#EAEAEA);
  rect(27+400,155,336,114,10); //borde blanco
  noFill();
  fill(#CBCBCB);
  rect(27+400,227,336,42,10); //la parte gris donde estan los circulos
  noFill();
  fill(70);
 rect(30+400,157,330,80,10); //parte negra donde esta escrita la marca
  noFill();
  fill(230);
  textSize(40);
text("Marshall",115+410,215); //las letras
  stroke(#CBCBCB);
  strokeWeight(5);
  line(429,234,760,234);
  noStroke();
  fill(#898787);
  ellipse(475,253,20,20); //entrada uno
  ellipse(553,253,20,20); //entrada dos
  ellipse(631,253,20,20); //entrada tres
  ellipse(709,253,20,20); //entrada cuatro
  noFill();
  fill(40);
  ellipse(475,253,13,13);
  ellipse(553,253,13,13);
  ellipse(631,253,13,13);
  ellipse(709,253,13,13);
}

void mouseClicked(){
  println("x"+mouseX+"|Y:"+mouseY);
}
