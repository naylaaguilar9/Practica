  Gestor g;

void setup(){
  size(600,600);
  g = new Gestor();
  background(255);
}

void draw(){
  background(255);
  g.actualizar();
  if(g.giraDer){
    background(0,0,255);
  }else if(g.giraIzq){
    background(255,255,0);
  }
}
