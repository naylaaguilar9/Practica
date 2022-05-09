  Gestor g;

void setup(){
  size(600,600);
  g = new Gestor();
  background(255);
}

void draw(){
  g.actualizar();
  
  if(g.movGrande){
    crearGrandes();
  }else if(g.movPeque){
    crearPeques();
  }
}

void crearGrandes(){
  float t = random(100,250);
  noStroke();
  fill(random(70),random(70),random(100));
  ellipse(random(width),random(height),t,t);
}

void crearPeques(){
  float t = random(5,20);
  noStroke();
  if(mouseX<width/2.0){
  fill(random(200,255),0,0);
  }else{
  fill(0,0, random(200,255));
  }
  ellipse(random(width),random(height),t,t);
}
