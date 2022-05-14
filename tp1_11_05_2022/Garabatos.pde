class Garabato {
  float x, y ;
  float xdir, ydir;
  float dir, vel ;
  float tam ;
  float an ;

  Garabato() {
    x = random( 50, width - width/2.0 );
    y = random( 0, height - height/2.0);
    xdir = random(width);
    ydir = random(height);
    tam = 2 ;
    vel = 1;
    dir = radians(random(360));
  }   

  void dibujar () {
      grafico3.strokeWeight(3);
      grafico3.fill(0);
      grafico3.line(x, y, x, y);
    
  }

  void mover () {
    an = radians(random(-100, 100));
    dir = dir + an ;
    //tambien puede ser (dir - an) que hace circulos raros 

    float dix = -vel * cos(dir);
    float diy = -vel * sin(dir);

    x = x+dix;
    y = y+diy;
    
      if ( x<0 || x>width-0 ) {
      x = x * -1;
    }
    if ( y<0 || y>height-0 ) {
      y = y * -1;
    }
  
  }
  
}
