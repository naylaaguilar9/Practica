class Gestor{
  Dir_y_Vel mouse;
  boolean movGrande;
  boolean movPeque;
  float tGrande;
  float tPeque;
  Gestor(){
   mouse = new Dir_y_Vel();
  }
 
  void actualizar(){
    mouse.calcular(mouseX,mouseY);
    movGrande = false;
    movPeque = false;
    
    tGrande --;
    tPeque--;
    //constrain limita = no puede ser mas pequeño que 0 y no puede ser mas grande que 90
    tGrande = constrain(tGrande,0,90);
    tPeque = constrain(tPeque,0,90);
  
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
