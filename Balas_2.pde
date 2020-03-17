class Bala2 {
  PVector pBala2, vBala2;
  
  Bala2(float tempX2, float tempY2, float tempRapidezX2, float tempRapidezY2){
    vBala2 = new PVector(tempRapidezX2, tempRapidezY2);
    pBala2 = new PVector(tempX2, tempY2);
  }
  void mover2() {   
      pBala2.add(vBala2);
  } 
  
  void mostrar2() {
    fill(249,0,0);
    noStroke();
    ellipse( pBala2.x, pBala2.y, 5, 5);  
  }


boolean checkCollision2(ArrayList<Asteroide> asteroids){
   for(Asteroide a : asteroids){
     PVector dist2 = PVector.sub(pBala2, a.pAsteroide);
     if(dist2.mag() < a.radio_){ 
      a.breakUp(asteroides);
      puntaje1 += 10; 
      
      return true;
     }
   }
   return false;
 }
}

void disparar2(){  
  if (dispararRapidez2<=millis()-ultimoFired2) {
    if (proyectilCantidad2>0) {
   
      ultimoFired2=millis();
      float xRapidez2 ;
      float yRapidez2 ;
      float angulo2 = direccion2+4.7;
      xRapidez2 = cos(angulo2);
      yRapidez2 = sin(angulo2);
      xRapidez2*= balavueloRapidez2;
      yRapidez2*= balavueloRapidez2;
          
      balas2.add (new Bala2(posicion2.x, posicion2.y,xRapidez2, yRapidez2));
    } 
  } 
} 

void dibujarBalas2() {
  for (Bala2 actualBala2 : balas2 ) {    
    actualBala2.mover2();
    actualBala2.mostrar2();
 } 
}