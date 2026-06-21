/*Sebastian_Llaque_Blanco
   Comision_3
   link del video:https:https://www.youtube.com/watch?v=98SoVPL6Vtk
 */
PImage cuadro;
int colorFondo;
final int ROJO = #bc0000;
final int bucle = 385;

void setup() {
  size(800, 400);
  cuadro =loadImage("cuadro.jpg");
  colorFondo = ROJO;
}

void draw() {
  background(colorFondo);
  tiempo = 0.05;
  //llamo a mi funcion y a los valores
  anillos(desplazamiento, tiempo);

  if (cuadro != null) {
    image(cuadro, 0, 0, 400, 400);
  }
}

void mousePressed () {
  colorFondo = color (random (255), random(255), random(255));
  int brillo = int (colorEstela(desplazamiento));
  stroke (brillo);
}

void keyPressed () {
  //reinicio el color del fondo
  colorFondo = ROJO;
  tiempo = 0 ;
}
  
