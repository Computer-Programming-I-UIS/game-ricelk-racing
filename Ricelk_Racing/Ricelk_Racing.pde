import ddf.minim.*;
Minim minim;
AudioPlayer player;
PImage imagen_intro;
PImage imagen1;
boolean boton = false;
int x=350;
int y=120;
int w=150;
int h=40;
void setup() {
  size(800, 700);
  minim = new Minim(this);
  player = minim.loadFile("musica_intro.mp3"); //Audio de intro
  player.play();
  imagen_intro = loadImage("imagen_intro.jpg");
  image(imagen_intro, 0, 0);
  PFont font1;
  font1 = loadFont("Garamond-Italic-30.vlw");
  textFont(font1, 40);
  fill(224, 3, 3);
  text("¡EL RELOJ ES TU ENEMIGO!", 190, 80);
  textSize(28);
  PFont font2;
  font2 = loadFont("CalifornianFB-Bold-30.vlw");
  PFont font3;
  font3 = loadFont("KodchiangUPCItalic-30.vlw");
  fill(0, 41, 90);
  rect(x, y, w, h);
  textFont(font2, 25);
  fill(250);
  text("COMENZAR", 353, 149);
  textFont(font3, 40);
  fill(224, 3, 3);
  text("RICELK RACING", 90, 480);
}
void draw() {



  if ((mouseX>x)&&(mouseX<x+w)&&(mouseY>y)&&(mouseY<y+h && mousePressed)) {
    boton=true;
  } else {
    boton=false;
  }
  if (boton) {
    //INTRUCCION PARA LA INTRO
    imagen1 = loadImage("imagen1.PNG");
    image(imagen1, 0, 0);
    player.pause();
    fill(0, 41, 90);
    rect(100, 300, 100, 60);
    minim = new Minim(this);
    player = minim.loadFile("sonido_intro.mp3"); //Audio de intro
    player.play();
  }
}
