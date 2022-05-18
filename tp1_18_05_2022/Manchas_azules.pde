class Mancha {
  int c = int(random(10, 16));
  float x[] = new float [c];
  float y [] = new float [c];
  float tamW [] = new float[c];
  float tamH [] = new float [c];
  float vida = 0;

  Mancha() {
    for (int i = 0; i < c; i++) {
      x [i] = random(width/2, width-20);
      y [i]= random(height/2, height-20);
      tamW[i] = random(10, 15);
      tamH [i]= random(20, 28);
    }
  }

  void dibujar() {
    for (int i = 0; i < 10; i++) {
      grafico2.noStroke();
      push();
      grafico2.fill(3,179,212,vida);
      grafico2.rectMode(CORNER);
      grafico2.rect(x[i], y[i], tamW[i], tamH[i]);
      pop();
      push();
      grafico2.fill(255,255,255,vida+10);
      grafico2.rectMode(CENTER);
      grafico2.rect(x[i]+5, y[i]+5, tamW[i]-3, tamH[i]-9);
      pop();
    }
  }
  
  void actualizar(){
  vida += 2;
  }
  
  boolean estaVivo(){
  if(vida <= 255){
    return true;
  }else{
    return false;
    } 
  }
  
  void PinceladasNegras() {
    push();
    PImage m = loadImage("trazo.png");
    float x1 = random(width/2, width-20);
    float y1 = random(height/2, height-20);
    grafico2.rotate((random(-5, 10)));
    grafico2.tint(21,20,24,100);
    grafico2.image(m, x1, y1);
    grafico2.scale ( random (-2, 1));
    pop();
  }
}
