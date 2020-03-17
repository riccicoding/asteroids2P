  void dibujarNave2() { 
    pushMatrix();
    if(vidas1==0){
      mostrarNave2[0]=false;
      balas2 = new ArrayList<Bala2>();
    }
    
    translate(posicion2.x, posicion2.y);
    rotate(direccion2);
    imageMode(CENTER);
    rotate(4.7);
    image(Nave3,0, 0);
    if (accel2.mag() != 0) { 
      float fuego2 = random(0,255);
      fill(fuego2, fuego2/2, 0);
      
      image(Nave2, 1, 1);
    }
    popMatrix();
  }
  boolean checkCollision2(ArrayList<Asteroide> asteroids){
   for(Asteroide a : asteroides){
    PVector dist = PVector.sub(a.pAsteroide, posicion2);
    if(dist.mag() < a.radio_ + 15/2){
     a.breakUp2(asteroids);
     return true; 
    }
   }
   return false;
 }
  