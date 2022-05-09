class Gestor{
  Dir_y_Vel mouse;
  boolean giraDer;
  boolean giraIzq;
  float direccionFrameAnterior;
  
  Gestor(){
   mouse = new Dir_y_Vel();
  }
 
  void actualizar(){
    mouse.calcular(mouseX,mouseY);
    giraDer = false;
    giraIzq = false;
    if(mouse.velocidad()>10){
      //por un lado siempre va a ser positivo y en otro siempre negativo
    float diff  = mouse.direccionPolar()-direccionFrameAnterior;
      if(diff<0){
        giraIzq = true;
      }else{
        giraDer = true;
      }
    }
    
    direccionFrameAnterior = mouse.direccionPolar();
  }
}
