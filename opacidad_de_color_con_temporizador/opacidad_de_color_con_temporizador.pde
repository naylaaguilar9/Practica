int Opacidad=255;
float inc=0.5;
void setup(){

size(600,600);

}

void draw(){
background(255);
if(mousePressed==true){ //boolean oara el sonido
Opacidad-=inc;
}
fill(255,0,0,Opacidad);
rect(10,10,100,100);
println(Opacidad);
}
