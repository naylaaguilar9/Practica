  Gestor g;

void setup(){
  size(600,600);
  g = new Gestor();
}

void draw(){
  g.actualizar();
  background(0);
  
  if(g.movGrande){
    background(255,0,0);
  }else if(g.movPeque){
    background(0,255,0);
  }
}
