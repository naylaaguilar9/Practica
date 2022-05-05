class Pinceladas {

  int can = 4;
  int c = int(random(can));
  PImage pinceladas[] = new PImage [can];
  Paleta p = new Paleta("obra.jpg");

  Pinceladas() {
    for (int i = 0; i < can; i++) {
      String nombre = "trazo"+nf(i, 2)+".png" ;
      pinceladas[i]= loadImage(nombre);
      pinceladas[i].filter(INVERT);
    }
  }

  void dibujar() {
    push();
    grafico1.imageMode(CENTER);
    grafico1.rotate((random(-5, 10)));
    float x = random ( 0,width-10);
    float y = random (0,height -10);

    for (int i = 0; i < c; i=+3) {
      int mostrar =int(random (can));
      grafico1.tint(p.darunColor(), 180);
      grafico1.scale ( random (-2, 5));
      grafico1.image (pinceladas[mostrar], x, y );
    } 
    pop();
  }
}
