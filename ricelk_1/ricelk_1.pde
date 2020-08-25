Carro car;
int maxImages=302;
int imageIndex=0;
PImage[] images=new PImage[maxImages];







PImage volanterecto;
PImage derecha1;
PImage derecha2;
PImage izquierda1;
PImage izquierda2;
PImage pista1;
int a = -200;
int b = -200;
int vel = 15;
int tiempo = 0;
float velocidadf = 5;
int x;
int y;
int velocidad;
boolean acelerar = false;
boolean frenar = false;


void setup() {

  size(800, 700);
  car = new Carro(x, y, velocidad, tiempo);


  for (int i =0; i < images.length; i++) {
    images[i] = loadImage("fr_" + i +".PNG" );
  }
  // frameRate(velocidadf);
}

//imageMode(CENTER);

void draw () {
  background(0);
  image(images[imageIndex], a, b);
  imageIndex=(imageIndex+1)%images.length;

  if (acelerar) {
    velocidadf = velocidadf + 15;
    frameRate(int(velocidadf));
  } else if (frenar) {
      velocidadf = velocidadf - 3;
    frameRate(velocidadf);
  }
  car.mover();
  car.izquierda();
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
    a = a-15;
    break;
  case LEFT:
    a = a+15;
    break;
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
    a = a-15;

  case LEFT:
    a = a+15;
  }
}
