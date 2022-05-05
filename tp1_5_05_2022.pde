/*
 | TP1 | Tmm2 | FdA | UNLP |
 ------- TP1 Etapa 2: Prototipo -------
 Comision: Lisandro | Prof.Lisandro Peralta
 Alumnas: Aguilar Nayla Belen(88106/6), Almeida Benja(88271/9), Moreira Abril(88127/2).
 Video:
*/


PGraphics grafico1; //pinceladas//
PGraphics grafico2; //MACHAS AZULES//
PGraphics grafico3; //GARABATO//
Cuadro c;


void setup() { 
  size(500, 700);

  grafico1 = createGraphics( 500, 700 );
  grafico2 = createGraphics( 500 , 700 );
  grafico3 = createGraphics( 500 , 700 );
  c = new Cuadro();
  background(200,223,237);
}

void draw() {
  c.dibujarCuadro();
  image(grafico1 , 0, 0  );
  image (grafico2 , 0 , 0);
  image(grafico3 , 0 , 0 );
}
