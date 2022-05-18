class Dir_y_Vel{
  float posX,posY;
  float preX,preY;
  float dirX,dirY;
  float vel;
  float dirPolar;
  
  Dir_y_Vel(){
    this.posX = 0;
    this.posY = 0;
  }
  
  void calcular(float miX, float miY){
    preX = posX;
    posX = miX;
    
    preY = posY;
    posY = miY;
    
    dirX = posX-preX;
    dirY = posY-preY;
    dirPolar = radians(atan2(posY-preY,posX-preX));
    
    vel = dist(posX,posY,preX,preY);
  }
  
  float velocidad(){
    return vel;
  }
  
  float direccionX (){
    return dirX;
  }
  
  float direccionY (){
    return dirY;
  }
  
  float direccionPolar(){
    return dirPolar;
  }
  
}
