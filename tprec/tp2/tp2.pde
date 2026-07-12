//sebastian Llaqu Blanco Com3

int estado = 0;
int frameInicioPantalla = 0;
int duracionPantallaFrames = 300; // 5 segundos

float posXTexto = 50;
float posYTexto = 370;

float posXImg = 180;
float posYImg = 30;
float velXImg = 0 ;
float velYImg = 0 ;
float escalaImg = 1;
float alphaImg =255;

PImage imgInicio, img1, img2, img3, img4, img5, img6, imgFin;
PFont miFuente;

void setup() {
  size(640, 480);
  miFuente = createFont("Gabriola-48.vlw", 15);

  imgInicio = loadImage("menu.jpg");
  img1 = loadImage("1.jpg");
  img2 = loadImage("2.jpg");
  img3 = loadImage("3.jpg");
  img4 = loadImage("4.jpg");
  img5 = loadImage("5.jpg");
  img6 = loadImage("6.jpg");
  imgFin = loadImage("7.jpg");
}

void draw() {
  background(0);

  if (estado >= 1 && estado <= 6) {
    if (frameCount - frameInicioPantalla > duracionPantallaFrames) {
      estado++;
      frameInicioPantalla = frameCount;
      reiniciarPosicionTexto();
    }
  }

  if (estado == 0) {
    image(imgInicio, 0, 0, width, height);
    dibujarBoton(220, 380, 200, 50, "COMENZAR");
  } else if (estado == 1) {
    animarImagen();
    dibujarImagenAnimada(img1);
    if (posXTexto < 50) posXTexto += 5;
    dibujarTexto("Formación oficial (2008):\nLa banda fue fundada en Las Vegas, Nevada, por el vocalista Dan Reynolds y los\nestudiantes universitarios Andrew Tolman y Andrew Beck.\nPoco tiempo después, se unirían los miembros definitivos:\nWayne Sermon (guitarra), Ben McKee (bajo) y Daniel Platzman (batería).");
  } else if (estado == 2) {
    animarImagen();
    dibujarImagenAnimada(img2);
    if (posXTexto > 50) posXTexto -= 5;
    dibujarTexto("El éxito de It's Time y Continued Silence (2012):\nEl lanzamiento de este EP fue un punto de inflexión. Incluyó el exitoso sencillo \n«It's Time»,que se convirtió en su primer gran hit y les valió su primer \nreconocimiento masivo.");
  } else if (estado == 3) {
    animarImagen();
    dibujarImagenAnimada(img3);
    if (posYTexto < 370) posYTexto += 3;
    dibujarTexto("Consagración mundial con Night Visions (2012):\nSu álbum debut de estudio los catapultó a la fama internacional.\nEl disco alcanzó el número dos en la lista Billboard 200 e incluyó el sencillo \n«Radioactive», considerado por la revista Rolling Stone como el \nmayor éxito de rock del año.");
  } else if (estado == 4) {
    animarImagen();
    dibujarImagenAnimada(img4);
    if (posYTexto > 370) posYTexto -= 3;
    dibujarTexto("Alcanzando el número uno con Smoke + Mirrors (2015):\nSu segundo álbum de estudio consolidó su sonido y logró el primer puesto \nen las listas de ventas de Estados Unidos, Canadá y el Reino Unido.");
  } else if (estado == 5) {
    animarImagen();
    dibujarImagenAnimada(img5);
    if (posXTexto > 50) posXTexto -= 5;
    dibujarTexto("Impacto histórico en listas con Believer (2017):\nEl lanzamiento del primer sencillo de su tercer álbum Evolve marcó un \nregreso arrasador. La canción batió récords de permanencia en las listas de radio \ny se convirtió en un himno mundial para la agrupación.");
  } else if (estado == 6) {
   animarImagen();
    dibujarImagenAnimada(img6);
    if (posYTexto < 370) posYTexto += 3;
    dibujarTexto("Lanzamiento de Loom y el LOOM World Tour (2024-2025):\nCon el lanzamiento de su sexto álbum de estudio, Loom, la banda continuó rompiendo \nfronteras y emprendió una de sus giras mundiales más ambiciosas.\nEste tour incluyó shows masivos, como su memorable presentación en el \nHipódromo de San Isidro en Buenos Aires (Argentina).");
  } else if (estado == 7) {
    image(imgFin, 0, 0, width, height);
    dibujarBoton(220, 380, 200, 50, "REINICIAR");
  }
}

void reiniciarPosicionTexto() {
  if (estado == 1) {
    posXTexto = -600; 
    posYTexto = 370;
  } else if (estado == 2 || estado == 5) { 
    posXTexto = 700; 
    posYTexto = 370;
  } else if (estado == 3 || estado == 6) { 
    posXTexto = 50;
    posYTexto = 240; 
  } else if (estado == 4) {
    posXTexto = 50;
    posYTexto = 500; 
  }
  if (estado == 1) {
    posXImg = 160;
    posYImg = -350;
    velXImg = 0;
    velYImg = 5;
    escalaImg = 0.5;
    alphaImg = 255;
  } else if (estado == 2) {
    posXImg = -400;
    posYImg = 30;
    velXImg= 6;
    velYImg = 0;
    escalaImg = 1;
    alphaImg = 0;
  } else if (estado == 3) {
    posXImg = 160;
    posYImg = 30;
    velXImg = 0;
    velYImg = 0;
    escalaImg = 1;
    alphaImg = 255;
  } else if (estado == 4) {
    posXImg = 160;
    posYImg = 550;
    velXImg = 0;
    velYImg = -4;
    escalaImg = 1;
    alphaImg = 255;
  } else if (estado == 5) {
    posXImg = 700;
    posYImg = 30;
    velXImg = -5;
    velYImg = 0;
    escalaImg = 1;
    alphaImg = 255;
  } else if (estado == 6) {
    posXImg = -300;
    posYImg = -200;
    velXImg = 4;
    velYImg = 3;
    escalaImg = 0.6;
    alphaImg = 255;
  }
}

void animarImagen() {
  if (abs(posXImg - 160)>abs(velXImg))posXImg += velXImg;
  else posXImg = 160;
  if (abs(posYImg - 30)>abs(velYImg))posYImg += velYImg;
  else posYImg = 30;
  if (escalaImg < 1)escalaImg += 0.015;
  if (alphaImg < 255) alphaImg += 5;
}

void dibujarImagenAnimada(PImage img) {
  tint(255, alphaImg);
  pushMatrix();
  translate(posXImg + 150, posYImg + 150);
  scale(escalaImg);
  image(img, -150, -150, 300, 300);
  popMatrix();
  noTint();
}

void dibujarBoton(float x, float y, float w, float h, String texto) {
  stroke(255);
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(90, 90, 90, 230);
  } else {
    fill(40, 40, 40, 220);
  }
  rect(x, y, w, h);
  fill(255);
  textFont(miFuente);
  textAlign(CENTER, CENTER);
  text(texto, x + w/2, y + h/2);
}

void dibujarTexto(String contenido) {
  textFont(miFuente);
  fill(255);
  textAlign(LEFT);
  text(contenido, posXTexto, posYTexto);
}

void mousePressed() {
  // Botón Comenzar
  if (estado == 0 && mouseX > 220 && mouseX < 420 && mouseY > 380 && mouseY < 430) {
    estado = 1;
    frameInicioPantalla = frameCount;
    reiniciarPosicionTexto();
  }
  // Botón Reiniciar
  if (estado == 7 && mouseX > 220 && mouseX < 420 && mouseY > 380 && mouseY < 430) {
    estado = 0;
  }
}

void mouseClicked() {
  println("Clic registrado");
}
