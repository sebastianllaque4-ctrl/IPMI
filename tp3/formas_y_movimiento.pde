int posX = 435;
int posY = 35;
float desplazamiento = 0;
float velocidad = 1.5  ;
float tiempo = 0.05;

void anillos(float mov, float t) {
  noFill();
  strokeWeight(random(5));
  stroke(random(255), random(255), random(25));

  //for anidados + movimiento
  //condicionales if y else + traslate
  for (int x = 0; x < 7; x++) {
    for (int y = 0; y < 7; y++) {
      float movimiento;

      //if else
      if (y % 2 == 0) {//si el numero es par

        movimiento = mov;//se mueve a la derecha
      } else {
        movimiento = -mov; //se mueve a la izquierda
      }
      //dibuja la ultima posision del anillo
      float posFinalX = posX + x *55 + movimiento;
      float posFinalY = posY + y *55;

      if (posFinalX<400) {
        posFinalX = posFinalX + bucle;
      }
      if (posFinalX>785) {
        posFinalX = posFinalX - bucle;
      }
      // efecto de palpitar
      float escala = map (sin(t + x * 0.5 + y * 0.3), -1, 1, 0.7, 1.2);
      float diametro = 35 * escala;

      //traslate
      pushMatrix();
      translate(posFinalX, posFinalY);
      ellipse(0, 0, diametro, diametro);
      popMatrix();
    }
  }

  desplazamiento = desplazamiento + velocidad;
  desplazamiento = desplazamiento % bucle;
}

float colorEstela(float valor) {
  return map (valor, 0, bucle, 50, 255);
}
