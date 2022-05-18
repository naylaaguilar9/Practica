class PinceladasOtro{
  
  int can = 4;
  int c = int(random(can));
  PImage pinceladasO[] = new PImage [can];
  Paleta o = new Paleta("otro.jpg");
  
   PinceladasOtro(){
     for (int i = 0; i < can; i++) {
      String nombre = "trazo"+nf(i, 2)+".png" ;
      pinceladasO[i]= loadImage(nombre);
      pinceladasO[i].filter(INVERT);
    }
   }
   
     void dibujar() {
    push();
    grafico1.imageMode(CENTER);
    grafico1.rotate((random(-5, 10)));
    float xO = random ( 0,width);
    float yO = random (0,height);

    for (int i = 0; i < c; i=+3) {
      int mostrar =int(random (can));
      grafico1.tint(o.darunColor(), 180);
      grafico1.scale ( random (-2, 2));
      grafico1.image (pinceladasO[mostrar], xO, yO);
    } 
    pop();
  }
}
