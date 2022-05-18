class Gestor{
  Dir_y_Vel mouse;
  //NO hay movimiento
  boolean NoMeMuevo;
  
   //MOVIMIENTOS normal
  boolean seMoviaFrameAnterior;
  boolean arriba;
  boolean abajo;
  boolean derecha;
  boolean izquierda;
  
   //MOVIMIENTOS Giros 
  boolean giraDer;
  boolean giraIzq;
  float direccionFrameAnterior;
  
  Gestor(){
   mouse = new Dir_y_Vel();
  }
  
  void actualizar(){
  mouse.calcular(mouseX,mouseY);
  //MOVIMIENTOS normal
  boolean seMueveElFrame = false;
  float sensibilidad = 30;
  if(mouse.velocidad()>sensibilidad && mouse.velocidad()<150 ){
      seMueveElFrame = true;
    }
  
    arriba = false;
    abajo = false;
    derecha = false;
    izquierda = false;
    
    if(seMueveElFrame && !seMoviaFrameAnterior){
      arriba = mouse.direccionY()<-sensibilidad?true:false;
      abajo = mouse.direccionY()>sensibilidad?true:false;
      derecha = mouse.direccionX()>sensibilidad?true:false;
      izquierda = mouse.direccionX()<-sensibilidad?true:false;
    }
    
    seMoviaFrameAnterior = seMueveElFrame;
    
    
    //MOVIMIENTOS Giros
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
   //NO hay movimiento
   //NoMeMuevo = false;
   //if(mouse.velocidad()<  ){
   //   NoMeMuevo = true;
   // }
}
