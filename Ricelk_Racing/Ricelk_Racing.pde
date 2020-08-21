import ddf.minim.*;
Minim minim;
AudioPlayer player;
int boton=30;
PImage imagen_intro;
void setup(){
  size(800,550);
  minim = new Minim(this);
  player = minim.loadFile("sonido_intro.mp3"); //Audio de intro
  player.play();
  imagen_intro = loadImage("imagen_intro.jpg");
  image(imagen_intro,0,0);
  PFont font1;
font1 = loadFont("Garamond-Italic-30.vlw");
textFont(font1, 40);
fill(224, 3, 3);
text("¡EL RELOJ ES TU ENEMIGO!", 190, 80);
 textSize(28);
 
}
void draw(){
  PFont font2;
  font2 = loadFont("CalifornianFB-Bold-30.vlw");
  PFont font3;
  font3 = loadFont("KodchiangUPCItalic-30.vlw");
  fill(0, 41, 90);
  rect(350,120,150,40,8);
  textFont(font2, 25);
  fill(250);
 text("COMENZAR",353,149);
 textFont(font3, 40);
 fill(224, 3, 3);
 text("RICELK RACING",90,480);
 
 //COMIENZO DEL JUEGO
 float a = dist(mouseX, mouseY, 380, 100);
  if ( a < boton) {
    fill(243, 246, 51);
    if ( mousePressed == true) {
      background(12, 190, 90);
      if ( mousePressed  == true) {
      }

      //funcion de comenzar
    }
  }
}
