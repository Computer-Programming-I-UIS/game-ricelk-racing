class Carro {

  PImage volanterecto;
  PImage derecha1;
  PImage derecha2;
  PImage izquierda1;
  PImage izquierda2;
  PImage pista1;
  int x;
  int y;
  int velocidad = 0;
  int tiempo = 0;
  int tiempo2 = 0;



  Carro(int x, int y, int velocidad, int tiempo) {
  }

  void mover() {
    volanterecto = loadImage("centrado.png");
    volanterecto.resize(0, 810);
    image(volanterecto, 0, -110);

    //****volante recto******
    if ( keyPressed && key == CODED) {
      if (keyCode == UP) {
        velocidad = velocidad +1;
        volanterecto = loadImage("centrado.png");
        volanterecto.resize(0, 810);
        image(volanterecto, 0, -110);
      }
    }

    //***volante derecha1****
    if (keyPressed && key == CODED) {
      if (keyCode == RIGHT) {
        derecha1 = loadImage("derecha1.png");
        derecha1.resize(0, 810);
        image(derecha1, 0, -110);
        tiempo = tiempo +1;
      }
      if  (tiempo >= 6) {
        derecha2 = loadImage("derecha2.png");
        derecha2.resize(0, 810);
        image(derecha2, 0, -110);
        if (keyCode != RIGHT) {
          tiempo = 0;
        }
      }
    }
  }

  void izquierda () {

    //*******volanteizquierda1 ****
    if (keyPressed && key == CODED) {
      if (keyCode == LEFT) {
        izquierda1 = loadImage("izquierda1.png");
        izquierda1.resize(0, 810);
        image(izquierda1, 0, -110);
        tiempo2 = tiempo2 +1;
      }
      if  (tiempo2 >= 6) {
        izquierda2 = loadImage("izquierda2.png");
        izquierda2.resize(0, 810);
        image(izquierda2, 0, -110);
        if (keyCode != LEFT) {
          tiempo2 = 0;
        }
      }
    }
  }
  
}
