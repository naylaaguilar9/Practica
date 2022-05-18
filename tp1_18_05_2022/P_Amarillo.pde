class PinceladasAmarillo{
  //int Opacidad=200;
  //float inc=0.5;
  
  int can = 4;
  int c = int(random(can));
  PImage pinceladasA[] = new PImage [can];
  Paleta a = new Paleta("amarillo.jpg");
  
  PinceladasAmarillo(){
    for (int i = 0; i < can; i++) {
      String nombre = "trazo"+nf(i, 2)+".png" ;
      pinceladasA[i]= loadImage(nombre);
      pinceladasA[i].filter(INVERT);
    }
  }
  
    void dibujar() {
    push();
    grafico1.imageMode(CENTER);
    grafico1.rotate((random(-5, 10)));
    float xA = random ( 0,width);
    float yA = random (0,height);
    
    //if(mousePressed==true){ //boolean para cuando no hay sonido
    //  Opacidad-=inc;
    //}
    
    for (int i = 0; i < c; i=+3) {
      int mostrar =int(random (can));
      grafico1.tint(a.darunColor(), 180);
      grafico1.scale ( random (-2, 3));
      grafico1.image (pinceladasA[mostrar], xA, yA );
    } 
    pop();
  }
}
