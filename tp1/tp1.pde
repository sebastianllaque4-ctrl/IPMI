//Sebastian Llaque
//Comisión 3
PImage mural;

void setup() {
  //ventana (ancho,alto)
  size(800, 400);
  //color de fondo del a ventana (rojo,verde,azul)
  background(0, 255, 255);
  mural = loadImage("mural.jpeg");
}

void draw() {
  background(0, 255, 255);
  image(mural, 0, 0, 400, 400);

  push();
  translate(400, 0);
  noStroke();
  //rectangulo 1
  fill(#F57F00);
  rect(0, 250, 500, 100);
  //rectangulo 2
  fill(#0293D3);
  rect(0, 320, 400, 100);
  //circulo 1
  fill(#FF55C4);
  ellipse(295, 230, 220, 300);
  //ala del ave 1
  fill(0);
  ellipse(250, 230, 50, 150);
  triangle(260, 300, 285, 400, 320, 297);
  //cuerpo del ave
  fill(#F0CD02);
  ellipse(280, 230, 100, 170);
  //cabeza del ave
  fill(#FFFCED);
  ellipse(270, 135, 70, 70);
  fill(#F0CD02);
  triangle(240, 150, 263, 190, 260, 150);
  fill(0);
  quad(243, 120, 250, 150, 305, 152, 305, 140);
  fill(0);
  ellipse(275, 150, 30, 20);
  //ojo del ave
  fill(#B9B9B9);
  ellipse(255, 135, 14, 14);
  //pico del ave
  fill(#464646);
  triangle(260, 153, 235, 130, 205, 155);
  //ala del ave 2
  fill(0);
  ellipse(305, 230, 50, 160);
  //rama
  // línea más gruesa

  strokeWeight(10);
  stroke(#905F01);
  line(265, 285, 320, 320);
  line(235, 300, 265, 285);
  line(140, 400, 235, 300);
  strokeWeight(1);
  stroke(0);
  //detalles
  fill(#023764);
  ellipse(47, 390, 90, 50);
  ellipse(46, 360, 80, 50);
  fill(0);
  triangle(120, 320, 130, 300, 140, 320);
  triangle(90, 320, 105, 290, 120, 320);
  triangle(60, 320, 40, 270, 20, 320);
  strokeWeight(5);
  stroke(#0059A5);
  line(20, 345, 40, 20);
  line(20, 345, 20, 15);
  line(10, 390, 5, 10);
  strokeWeight(1);
  stroke(0);
  //patas del ave
  fill(100);
  triangle(278, 277, 270, 290, 277, 305);
  triangle(258, 277, 250, 290, 257, 310);
  endShape(3);
  //barco flotante
  fill(#C16B00);
  triangle(90, 200, 140, 247, 170, 200);
  fill(255);
  triangle(160, 190, 150, 150, 150, 190);
  quad(145, 150, 145, 190, 130, 190, 130, 150);
  fill(#008625);
  rect(90, 195, 80, 15);
  fill(#5F4901);
  triangle(90, 195, 95, 170, 105, 195);
  triangle(98, 195, 105, 180, 110, 195);
  //burbujas
  fill(255, 255, 255, 100);
  ellipse(375, 295, 30, 30);
  ellipse(240, 340, 30, 30);
  ellipse(140, 350, 30, 30);
  ellipse(180, 250, 30, 30);
  ellipse(80, 305, 30, 30);

  pop();
  fill(0, 255, 0);
  textSize(30);
  text(mouseX + " - " + mouseY, mouseX, mouseY);
}
