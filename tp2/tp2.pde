// "Imagine dragons"  (Banda de musica)

int estado = 0;
int frameInicioPantalla = 0;
int duracionPantallaFrames = 300; // 5 segundos

float posXTexto = 50;
float posYTexto = 370;

float posXImg = 160;
float posYImg = 30;


PImage imgMenu, img1, img2, img3, img4, img5, img6, img7;
PFont fuenteBridgerton;

PFont miFuente;

void setup() {
  size(640, 480);

  miFuente=createFont ("TimesNewRomanPSMT-30.vlw", 15);

  //imagenes
  imgMenu = loadImage("menu.jpg");
  img1 = loadImage("01.jpg");
  img2 = loadImage("02.jpg");
  img3 = loadImage("03.jpg");
  img4 = loadImage("04_1.jpg");
  img5 = loadImage("04_2.jpg");
  img6 = loadImage("05.jpg");
  img7 = loadImage("06.jpg");
}
void draw() {
  background(0);

  if (estado >= 0 && estado <= 6) {
    if (frameCount - frameInicioPantalla > duracionPantallaFrames) {
      estado = estado + 1;
      frameInicioPantalla = frameCount;
      reiniciarPosicionTexto();
    }
  }
  //pantalla 0 + dibujo del boton1
  if (estado == 0) {
    image(imgMenu, 0, 0, width, height);
    dibujarBoton(220, 380, 200, 50);
  }
  //pantalla 1 + texto
  else if (estado == 1) {
    image(img1, posXImg, posYImg, 300, 300);

    if (posXTexto < 50) {
      posXTexto = posXTexto + 5;
    }
    textFont(miFuente);
    fill(255);
    textAlign(LEFT);
    text("Formación oficial (2008):\n La banda fue fundada en Las\n Vegas, Nevada, por el vocalista Dan Reynolds y los estudiantes\n universitarios Andrew Tolman y Andrew Beck.\n Poco tiempo después, se unirían los miembros definitivos:\n Wayne Sermon (guitarra), Ben McKee (bajo) yDaniel Platzman (batería).", posXTexto, posYTexto);
  }
  //pantalla 2 + texto
  else if (estado == 2) {
    image(img2, posXImg, posYImg, 300, 300);

    if (posXTexto > 50) {
      posXTexto = posXTexto - 5;
    }
    textFont(miFuente);
    fill(255);
    textAlign(LEFT);
    text("El éxito de (It's Time) y (Continued Silence) (2012):\n El lanzamiento de este EP fue un punto de inflexión. Incluyó el exitoso\nsencillo «It's Time», que se convirtió en su primer gran hit y\n les valió su primer reconocimiento masivo.", posXTexto, posYTexto);
  }
  //pantalla 3 + texto
  else if (estado == 3) {
    image(img3, posXImg, posYImg, 300, 300);;

    if (posYTexto < 370) {
      posYTexto = posYTexto + 3;
    }
    textFont(miFuente);
    fill(255);
    textAlign(LEFT);
    text("Consagración mundial con Night Visions (2012):\n Su álbum debut de estudio los catapultó a la fama internacional.\n El disco alcanzó el número dos en la lista Billboard 200 e incluyó el sencillo\n «Radioactive», considerado por la revista Rolling Stone como el mayor\n éxito de rock del año.", posXTexto, posYTexto);
  }
  //pantalla 4 + texto
  else if (estado == 4) {
    image(img4, posXImg, posYImg, 300, 300);

    if (posYTexto > 370) {
      posYTexto = posYTexto - 3;
    }
    textFont(miFuente);
    fill(255);
    textAlign(LEFT);
    text("Alcanzando el número uno con Smoke + Mirrors (2015):\n Su segundo álbum de estudio consolidó su sonido y logró el primer puesto en\n las listas de ventas de Estados Unidos, Canadá y el Reino Unido", posXTexto, posYTexto);
  }
  //pantalla 5 + texto
  else if (estado == 5) {
    image(img5, posXImg, posYImg, 300, 300);

    if (posXTexto > 50) {
      posXTexto = posXTexto - 5;
    }
    textFont(miFuente);
    fill(255);
    textAlign(LEFT);
    text("Impacto histórico en listas con (Believer) (2017):\n El lanzamiento del primer sencillo de su tercer álbum (Evolve)\n marcó un regreso arrasador. La canción batió récords de permanencia en\n las listas de radio y se convirtió en\n un himno mundial para la agrupación.", posXTexto, posYTexto);
  }
  //pantalla 6 + texto
  else if (estado == 6) {
    image(img6, posXImg, posYImg, 300, 300);

    if (posYTexto < 370) {
      posYTexto = posYTexto + 3;
    }
    textFont(miFuente);
    fill(255);
    textAlign(LEFT);
    text("Lanzamiento de Loom y el LOOM World Tour (2024-2025):\n Con el lanzamiento de su sexto álbum de estudio, Loom, la banda continuó\nrompiendo fronteras y emprendió una de sus giras mundiales más ambiciosas.\nEste tour incluyó shows masivos, como su memorable presentación\nen el Hipódromo de San Isidro en Buenos Aires (Argentina).", posXTexto, posYTexto);
  }
  //dibujo del boton 2
  if (estado == 7) {
    image(img7, 0, 0, width, height);
    dibujarBoton(220, 380, 200, 50);
  }
}

void reiniciarPosicionTexto() {
  if (estado == 1) {
    posXTexto = -550; // Inicia fuera a la izquierda
    posYTexto = 370;
  } else if (estado == 2) {
    posXTexto = 700;  // Inicia fuera a la derecha
    posYTexto = 370;
  } else if (estado == 3) {
    posXTexto = 50;
    posYTexto = 240;  // Inicia arriba de la caja
  } else if (estado == 4) {
    posXTexto = 50;
    posYTexto = 490;  // Inicia abajo del canvas
  } else if (estado == 5) {
    posXTexto = 700;  // Inicia fuera a la derecha
    posYTexto = 370;
  } else if (estado == 6) {
    posXTexto = 50;
    posYTexto = 240;  // Inicia arriba de la caja
  }
}
void dibujarBoton(float x, float y, float w, float h) {
  stroke(255);
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(90, 90, 90, 230);
  } else {
    fill(40, 40, 40, 220);
  }
  rect(x, y, w, h);
  fill(255);
  textAlign(CENTER);
  if (estado == 0) {
    textFont(miFuente);
    text("COMENZAR", x + w/2, y + h/2 + 5);
  } else if (estado == 7) {
    textFont(miFuente);
    text("REINICIAR", x + w/2, y + h/2 + 5);
  }
}

void mousePressed() {
  // Clic en boton "Comenzar" (Pantalla 0)
  if (estado == 0 && mouseX > 220 && mouseX < 420 && mouseY > 380 && mouseY < 430) {
    estado = 1;
    frameInicioPantalla = frameCount;
    reiniciarPosicionTexto();
  }
  // Clic en boton "REINICIAR" (Pantalla 6)
  if (estado == 7 && mouseX > 220 && mouseX < 420 && mouseY > 380 && mouseY < 430) {
    estado = 0;
  }
}
