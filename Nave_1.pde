  void dibujarNave1() { 
    pushMatrix();
     if(vidas==0){
      mostrarNave1[0]=false;
      balas = new ArrayList<Bala>();
    }
    translate(posicion.x, posicion.y);
    rotate(direccion);
    imageMode(CENTER);
    rotate(4.7);
    image(Nave,0, 0);
    if (accel.mag() != 0) { 
      float fuego = random(0,255);
      fill(fuego, fuego/2, 0);
      
      image(Nave2, 1, 1);
    }
    popMatrix();
  }
  boolean checkCollision(ArrayList<Asteroide> asteroids){
   for(Asteroide a : asteroides){
    PVector dist = PVector.sub(a.pAsteroide, posicion);
    if(dist.mag() < a.radio_ + 15/2){
     a.breakUp(asteroids);
     return true; 
    }
   }
   return false;
 }
  