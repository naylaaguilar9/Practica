  Gestor g;
  ArrayList <Caminante> cs;

void setup(){
  size(600,600);
  g = new Gestor();
  cs= new ArrayList<Caminante>();
  background(255);
}

void draw(){
  g.actualizar();
  
  if(g.arriba){
    cs.add(new Caminante(random(width),height,0,-1));
  }
  if(g.abajo){
    cs.add(new Caminante(random(width),0,0,1));
  }
  if(g.derecha){
    cs.add(new Caminante(0,random(height),1,0));
  }
  if(g.izquierda){
    cs.add(new Caminante(width,random(height),-1,0));
  }
  
  for(Caminante c : cs){
    c.dibujar();
  }
}
