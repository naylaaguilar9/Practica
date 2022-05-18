class PinceladasRosa{
  
  int can = 4;
  int c = int(random(can));
  PImage pinceladasR[] = new PImage [can];
  Paleta r = new Paleta("rosa.jpg");
  
  PinceladasRosa(){
     for (int i = 0; i < can; i++) {
      String nombre = "trazo"+nf(i, 2)+".png" ;
      pinceladasR[i]= loadImage(nombre);
      pinceladasR[i].filter(INVERT);
    }
  }
  
    void dibujar() {
    push();
    grafico1.imageMode(CENTER);
    grafico1.rotate((random(-5, 10)));
    float xR = random(width/2, width-20);;
    float yR= random(height/2, height-20);

    for (int i = 0; i < c; i=+3) {
      int mostrar =int(random (can));
      grafico1.tint(r.darunColor(), 180);
      grafico1.scale ( random (-2, 5));
      push();
      grafico1.image (pinceladasR[mostrar],xR,yR );
      pop();
    } 
    pop();
  }
}
