class Gestor{
  Dir_y_Vel mouse;
   //MOVIMIENTOS normal
  boolean seMoviaFrameAnterior;
  boolean arriba;
  boolean abajo;
  boolean derecha;
  boolean izquierda;
  
   //MOVIMIENTOS Giros
  boolean movGrande;
  boolean movPeque;
  float tGrande;
  float tPeque;
  
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
    movGrande = false;
    movPeque = false;
    tGrande --;
    tPeque--;
     if(mouse.velocidad()>10){
      float umbral = 50;
      if(mouse.velocidad()>umbral){
        //si hago movimiento grandes
          tGrande += 10;
          tPeque -= 10;
      }else{
        //si no hago movimiento grande
         if(tGrande<10){
        tPeque += 10;
         }
      }
    }
    if(tGrande>55){
      movGrande = true;
    }
    if(tPeque>55){
      movPeque = true;
    }
  }
  
  
}
