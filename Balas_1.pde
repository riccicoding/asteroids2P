class Bala {
  PVector pBala, vBala;
  
  Bala(float tempX, float tempY, float tempRapidezX, float tempRapidezY){
    vBala = new PVector(tempRapidezX, tempRapidezY);
    pBala = new PVector(tempX, tempY);
  }
  void mover() {   
      pBala.add(vBala);
  } 
  
  void mostrar() {
    fill(16,24,222);
    noStroke();
    ellipse( pBala.x, pBala.y, 5, 5);  
  }


boolean checkCollision(ArrayList<Asteroide> asteroids){
   for(Asteroide a : asteroids){
     PVector dist = PVector.sub(pBala, a.pAsteroide);
     if(dist.mag() < a.radio_){ 
      a.breakUp(asteroides);
      puntaje += 10; 
      
      return true;
     }
   }
   return false;
 }
}

void disparar(){  
  if (dispararRapidez<=millis()-ultimoFired) {
    if (proyectilCantidad>0) {
   
      ultimoFired=millis();
      float xRapidez ;
      float yRapidez ;
      float angulo = direccion+4.7;
      xRapidez = cos(angulo);
      yRapidez = sin(angulo);
      xRapidez*= balavueloRapidez;
      yRapidez*= balavueloRapidez;
          
      balas.add (new Bala(posicion.x, posicion.y,xRapidez, yRapidez));
    } 
  } 
} 

void dibujarBalas() {
  for (Bala actualBala : balas ) {    
    actualBala.mover();
    actualBala.mostrar();
 } 
}