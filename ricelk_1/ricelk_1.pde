

Carro car;
int maxImages=302;
int imageIndex=0;
PImage[] images=new PImage[maxImages];
import ddf.minim.*;
Minim minim;
AudioPlayer player;
PImage imagen_intro;
PImage imagen1;
PImage imagen2;
boolean boton = false;
int x=350;
int y=120;
int w=150;
int h=40;
int e=500;
int f=560;
int c=170;
int d=50;
int maxImages2=7;
int imageIndex2=0;
//PImage[] images=new PImage[maxImages2];

PImage volanterecto;
PImage derecha1;
PImage derecha2;
PImage izquierda1;
PImage izquierda2;
PImage pista1;
PImage clasificacion;
int a = -200;
int b = -200;
int vel = 15;
int tiempo = 0;
float velocidadf = 3.555;

int velocidad;
boolean acelerar = false;
boolean frenar = false;
boolean juego = false;
int s=34;
int m=1;

void setup() {

  size(800, 700);
  clasificacion = loadImage ("clasificacion.png");
  image(clasificacion,700,610);
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
  rect(x, y, w, h, 11);
  textFont(font2, 25);
  fill(250);
  text("COMENZAR", 353, 149);
  textFont(font3, 40);
  fill(224, 3, 3);
  text("RICELK RACING", 90, 480);
  car = new Carro(x, y, velocidad, tiempo);


  for (int i =0; i < images.length; i++) {
    images[i] = loadImage("fr_" + i +".PNG" );
    frameRate(velocidadf);
  }
  // frameRate(velocidadf);
}

//imageMode(CENTER);

void draw () {
  //background(0);


  if ((mouseX>x)&&(mouseX<x+w)&&(mouseY>y)&&(mouseY<y+h && mousePressed)) {
    background(0);
    imagen1 = loadImage("imagen1.jpg");
    image(imagen1, 0, 0);
    player.pause();
    minim = new Minim(this);
    player = minim.loadFile("sonido_intro.mp3"); //Audio de intro
    player.play();
    fill(0, 41, 90);
    rect(e, f, c, d, 11);
    fill(250);
    text("COMENZAR", 510, 593);
    fill(224, 3, 3);
    text("DESAFIA EL RECORD", 150, 593);
  }

  if ((mouseX>e)&&(mouseX<e+c)&&(mouseY>f)&&(mouseY<f+d && mousePressed)) {
    player.pause();
    background(0);
    juego = true;
  } 

  if (juego == true) {

    image(images[imageIndex], a, b);
    imageIndex=(imageIndex+1)%images.length;
    
    car.mover();
    car.izquierda();
  }
  if (acelerar) {
    velocidadf = velocidadf + 1.5;
    frameRate(int(velocidadf));
  } else if (frenar) {
    velocidadf = velocidadf - 0.5;
    frameRate(velocidadf);
  }

  /*  ******* temporizador
 textAlign(CENTER);
   textSize(30);
   delay(1000);
   if(s>=0){ 
   textSize(60);
   text(m+":"+s,width/2,60); s=s-1; }
   else{ m=m-1; s=59; text(m+":"+s,width/2,height/2); } 
   */
}


void keyPressed() {
  switch(keyCode) 
  {
  case UP:
    acelerar = true;
    break;
  case DOWN:
    frenar = true;
    break;
  case RIGHT:
    if (a >= -540) {
      a = a-15;
    }
    if (a <= -540) {
      fill(255, 0, 0);
      rect(780, 0, 20, 800);
      textSize(40);
      text("WARNING", 320, 50);
      frameRate(1);
    } else {
      frameRate(velocidadf);
    }
    break;
  case LEFT:
    if (a <= -10) {
      a = a+15;
    } 
    if ( a >= -10) {
      fill(255, 0, 0);
      rect(0, 0, 20, 800);
      textSize(40);
      text("WARNING", 320, 50);
      frameRate(1);
    } else {
      frameRate(velocidadf);
    }
  }
}

void keyReleased() {
  switch(keyCode) 
  {
  case UP:
    acelerar = false;

  case DOWN:
    frenar = false;

  case RIGHT:

  case LEFT:
  }
}
