class Asteroide{
  PVector pAsteroide;
  PVector vAsteroide;
  PVector rAsteroide;
  PImage fotos[], foto;
  float radio_;
  float radio2_;
  
  Asteroide(float multV, PVector pos, float radio, PImage[] fotos_){
   pAsteroide = pos;
   float angle = random(2 * PI);
   vAsteroide = new PVector(cos(angle), sin(angle));
   vAsteroide.mult(multV);
   vAsteroide.add(0.5, 0.5);
   rAsteroide = new PVector(cos(angle), sin(angle));
   int rnd = (int)(Math.random()*3);
   radio_ = radio;
   radio2_ = radio2;
   fotos = fotos_;
   foto = fotos[rnd];
 }
  
  void update(){
   pAsteroide.add(vAsteroide);
  }
  void edges(){
    if (pAsteroide.x<0) {
      pAsteroide.x += width;
    }
    if (pAsteroide.x>width) {
      pAsteroide.x = 0;
    }
    if (pAsteroide.y<80) {
      pAsteroide.y += 620;
    }
    if (pAsteroide.y>height) {
      pAsteroide.y = 80;
    }
  }
  
  void breakUp(ArrayList<Asteroide> asteroids){
  if(radio_ <= 30){
   asteroids.remove(this);
  } else if (radio_ < 33){
     for(int i = 0; i < 2; i++){
      float angle = random(2*PI);
      PVector rand = new PVector(radio_*sin(angle), radio_*cos(angle));
      rand.add(pAsteroide);
      asteroides.add(new Asteroide(multV, rand, radio_*.8, fotos));
    }
    asteroids.remove(this);
  } else {
    for(int i = 0; i < 2; i++){
      float angle = random(2*PI);
      PVector rand = new PVector(radio_*sin(angle), radio_*cos(angle));
      rand.add(pAsteroide);
      asteroides.add(new Asteroide(multV, rand, radio_*.8, fotos));
    }
    asteroides.remove(this);
    }
  }
  
  void breakUp2(ArrayList<Asteroide> asteroids){
  if(radio2_ <= 30){
   asteroids.remove(this);
  } else if (radio_ < 33){
     for(int i = 0; i < 2; i++){
      float angle2 = random(2*PI);
      PVector rand2 = new PVector(radio_*sin(angle2), radio_*cos(angle2));
      rand2.add(pAsteroide);
      asteroides.add(new Asteroide(multV, rand2, radio2_*.8, fotos));
    }
    asteroids.remove(this);
  } else {
    for(int i = 0; i < 2; i++){
      float angle2 = random(2*PI);
      PVector rand2 = new PVector(radio_*sin(angle2), radio_*cos(angle2));
      rand2.add(pAsteroide);
      asteroides.add(new Asteroide(multV, rand2, radio_*.8, fotos));
    }
    asteroides.remove(this);
    }
  }
  
  void mostrar(){
    imageMode(CENTER);
    image(foto, pAsteroide.x, pAsteroide.y, radio_*2, radio_*2);
  }
}