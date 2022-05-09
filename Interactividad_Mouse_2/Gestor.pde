class Gestor{
  Dir_y_Vel mouse;
  boolean seMoviaFrameAnterior;
  
  boolean arriba;
  boolean abajo;
  boolean derecha;
  boolean izquierda;
  
  Gestor(){
   mouse = new Dir_y_Vel();
  }
  
  void actualizar(){
  mouse.calcular(mouseX,mouseY);
 
  //lo que pasa con el mouse en este frame
  boolean seMueveElFrame = false;
  float sensibilidad = 35;
  //se evita que el salto de sensibilidad sea extremo
    if(mouse.velocidad()>sensibilidad && mouse.velocidad()<150 ){
      seMueveElFrame = true;
    }
    
    arriba = false;
    abajo = false;
    derecha = false;
    izquierda = false;
    
    //! = significa NO
    if(seMueveElFrame && !seMoviaFrameAnterior){
      arriba = mouse.direccionY()<-sensibilidad?true:false;
      abajo = mouse.direccionY()>sensibilidad?true:false;
      derecha = mouse.direccionX()>sensibilidad?true:false;
      izquierda = mouse.direccionX()<-sensibilidad?true:false;
    }
    
    //dejo listo todo para el siguiente frame
    seMoviaFrameAnterior = seMueveElFrame;
  }
  
  
}
