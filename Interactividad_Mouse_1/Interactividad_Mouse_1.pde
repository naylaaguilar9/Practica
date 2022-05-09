  Gestor g;

void setup(){
  size(600,600);
  g = new Gestor();
}

void draw(){
  g.actualizar();
  
  if(g.arriba){
    println("arriba");
  }
  if(g.abajo){
    println("abajo");
  }
  if(g.derecha){
    println("derecha");
  }
  if(g.izquierda){
    println("izquierda");
  }
}
