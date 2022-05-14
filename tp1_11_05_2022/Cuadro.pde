class Cuadro { 
  boolean sedibuja  = false; //pinceladas//

  Mancha a= new Mancha();
  Garabato b = new Garabato ();
  PinceladasAmarillo c = new PinceladasAmarillo();
  PinceladasRosa d = new PinceladasRosa();
  PinceladasOtro e = new PinceladasOtro();
  Gestor g = new Gestor();
  

  void dibujarCuadro() { 
    g.actualizar();
    
    //Manchas
    grafico2.beginDraw();
    if(g.abajo){
      a.actualizar();
      a.dibujar();
      println("abajo");
    }else if(g.arriba){
      a.PinceladasNegras();
      println("arriba");
    }
    grafico2.endDraw();
    
    //Garabatos
    grafico3.beginDraw();
    if(g.movGrande){
      b.dibujar();
      b.mover();
      println("grande");
    }
    
      //Pinceladas
    grafico1.beginDraw();
    if (g.derecha) {
      c.dibujar();
      d.dibujar();
      e.dibujar();
      println("derecha");
    }else if(g.izquierda){
      c.dibujar();
      d.dibujar();
      e.dibujar();
      println("izquierda");
    }
    grafico1.endDraw();

    //else if(g.movPeque){
    // //c.parar();
    // //println("peque");
    //}
    grafico3.endDraw();
  }
}
