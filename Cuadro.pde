class Cuadro { 
  boolean sedibuja  = false; //pinceladas//

  Mancha a= new Mancha();
  Pinceladas b = new Pinceladas();
  Garabato c = new Garabato ();
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
    
    //Pinceladas
    grafico1.beginDraw();
    if (g.derecha) {
      b.dibujar();
      println("derecha");
    }else if(g.izquierda){
      b.dibujar();
      println("izquierda");
    }
    grafico1.endDraw();

    //Garabatos
    grafico3.beginDraw();
    if(g.movGrande){
      c.dibujar();
      c.mover();
      println("grande");
    }
    //else if(g.movPeque){
    // //c.parar();
    // //println("peque");
    //}
    grafico3.endDraw();
  }
}
