  Gestor g;
  
  float hue_a;
  float hue_b;

void setup(){
  size(600,600);
  g = new Gestor();
  colorMode(HSB);
  hue_a = random(255);
  hue_b = random(255);
}

void draw(){
  //background((float(mouseX)/width)*255,255,255); color arcoiris lindo :3
  int tam = 25;
  rectMode(CENTER );
  background(255);
  noStroke();
  for(int i=0; i<width; i += tam){
    for(int j = 0; j<height; j += tam){
      //tam*0.8 no se tocan, margen.
      if(((i/tam)%2==0 && !((j/tam)%2==0)) || ((j/tam)%2==0 && !((i/tam)%2==0))){
       float sat = map(i,0,width,50,255);
       float bri = map(j,0,height,50,255);
      fill(hue_a,sat,bri);
      ellipse(tam/2.0+i,tam/2.0+j,tam*0.8,tam*0.8);
      }else{
       float sat = map(i,0,width,255,50);
       float bri = map(j,0,height,255,50);
      fill(hue_b,sat,bri);
      rect(tam/2.0+i,tam/2.0+j,tam*0.8,tam*0.8);
      }
    }
  }
  
  g.actualizar();
  if(g.giraDer){
    hue_a++;
    //una vez exceda 255 vuelve a 0
    hue_a = hue_a%255;
  }else if(g.giraIzq){
    hue_b++;
    hue_b = hue_b%255;
  }
}
