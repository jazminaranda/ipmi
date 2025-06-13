void cuadrados(float y, float j, float i) {
  for (i = 0; i < columnas; i++) {
    for (j = 0; j < filas; j++) {
      float derecha = 400 + i * cuadrado;
      y = j * cuadrado;

      fill((i + j) % 2 == 0 ? azul : negro);
      rect(derecha, y, cuadrado, cuadrado);

      float cx = derecha + cuadrado / 2;
      float cy = y + cuadrado / 2;


      if ((i + j) % 2 == 0) {
        if (mouseSobreCirculo(cx, cy, cuadrado)) {
          fill(color(255, 0, 0));
        } else {
          fill(negro);
        }
      } else {
        fill(azul);
      }

      ellipse(cx, cy, cuadrado, cuadrado);
    }
  }
}

boolean mouseSobreCirculo(float cx, float cy, float r) {
  float d = dist(mouseX, mouseY, cx, cy);
  return d < r / 2;
}


void reiniciar() {
  azul= color (14, 19, 232);
  negro= color(0);
}
