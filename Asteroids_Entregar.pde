boolean[] teclas;
boolean[] teclas2;
boolean[] reiniciar;
boolean disparar[];
boolean disparar2[];
float naveAngulo, direccion, radio;
float naveAngulo2, direccion2, radio2;
PVector posicion, velocidad, accel;
PVector posicion2, velocidad2, accel2;
PImage corazon;
PImage corazon1;
PImage[] asteroidesFoto = new PImage[3];
PImage fotos[], foto;
long tiempo = 0;
long t_actualizado = 0;
long t_retardo = 5000;
int puntaje;
int puntaje1;
ArrayList <Bala> balas;
ArrayList <Bala2> balas2;
ArrayList <Asteroide> asteroides;
int nivel=0;
float balavueloRapidez= 10; 
int dispararRapidez=150; 
int ultimoFired=millis(); 
int proyectilCantidad = 1;
float balavueloRapidez2= 10; 
int dispararRapidez2=150; 
int ultimoFired2=millis(); 
int proyectilCantidad2 = 1;
int vidas = 3;
int vidas1 = 3;
int poder;
float multV;
PImage Nave;
PImage Nave2;
PImage Nave3;
PImage Menu0;
PImage Menu1;
PImage Menu2;
PImage Menu3;
int opcionesMenu=0;
boolean[] opciones;
boolean[] mostrarNave1;
boolean[] mostrarNave2;
PImage icono;
void setup() {
  size(1280, 720);
  reiniciar=new boolean[1];
  reiniciar[0]=false;
  mostrarNave1= new boolean[1];
  mostrarNave2= new boolean[1];
  mostrarNave1[0]= true;
  mostrarNave2[0]= true;
  disparar=new boolean[1];
  disparar2=new boolean[1];
  disparar[0]=false;
  disparar2[0]=false;
  teclas=new boolean[4];
  teclas[0]=false;
  teclas[1]=false;
  teclas[2]=false;
  teclas[3]=false;
  teclas2=new boolean[4];
  teclas2[0]=false;
  teclas2[1]=false;
  teclas2[2]=false;
  teclas2[3]=false;
 
  icono= loadImage("earth.png");
  corazon= loadImage("corazon.png");
  corazon1= loadImage("corazon1.png");
  posicion = new PVector(width/2, height/2);
  velocidad = new PVector();
  accel = new PVector();
  posicion2 = new PVector(width/2, height/2);
  velocidad2 = new PVector();
  accel2 = new PVector();
  Nave=loadImage("rocket-312455_960_720.png");
  Nave.resize(50, 30);
  Nave2=loadImage("rocket-312455_960_7202.png");
  Nave2.resize(50, 30);
  Nave3=loadImage("rocket-312455_960_72022.png");
  Nave3.resize(50, 30);
  Menu0=loadImage("Menu0.jpg");
  Menu1=loadImage("Menu1.jpg");
  Menu2=loadImage("Menu2.jpg");
  Menu3=loadImage("Menu3.jpg");
  asteroidesFoto[0] = loadImage("Asteroid0.png");
  asteroidesFoto[1] = loadImage("Asteroid1.png"); 
  asteroidesFoto[2] = loadImage("Asteroid2.png"); 
  puntaje = 0;
  puntaje1 = 0;
  radio = 50;
  balas = new ArrayList();  
  balas2 = new ArrayList();  
  asteroides = new ArrayList();
  opciones=new boolean[4];
  opciones[0]=false;
  opciones[1]=false;
  opciones[2]=false;
  opciones[3]=false;
  posicion.x=-width/5;
  posicion.y=height/2;
  posicion2.x=-width/-5;
  posicion2.y=height/2;
  surface.setTitle("Asteroids by RiPaGuPi"); 
  surface.setIcon(icono);
}

void draw() {

  if (nivel==3 && puntaje>puntaje1) {
    background(255);
  }

  if (nivel==3 && puntaje1>puntaje) {
    background(200);
  }



  if (nivel==0 && opcionesMenu==0) {
    background(Menu0);
  }
  if (nivel==0 && opcionesMenu==1) {
    background(Menu1);
  }
  if (nivel==2 && opcionesMenu==0) {
    background(Menu2);
  }
  if (nivel==2 && opcionesMenu==1) {
    background(Menu3);
  }
  if (opciones[0])
  {
    opcionesMenu=1;
  }

  if (opciones[1])
  {
    opcionesMenu=0;
  }

  if (opciones[1] && opcionesMenu==1)
  {
    opcionesMenu=0;
  }

  if (opciones[3])
  {
    nivel=2;
  }

  if (opciones[2] && opcionesMenu==0)
  {
    nivel=1;
  }
  if (opciones[2] && opcionesMenu==1)
  {
    exit();
  }

  if (nivel==1) {  
    background(255, 236, 160);
    if (checkCollision(asteroides)) {
      vidas--;
      posicion = new PVector(width/2, height/2);
      dibujarNave1();
    }
    tiempo = millis();
    mostrarPuntaje();
    Boolean();
    velocidad.add(accel);
    accel.limit(0.8);
    posicion.add(velocidad);
    if (  mostrarNave1[0]) {
      dibujarNave1();
    }

    accel.set(0, 0, 0);
    if (velocidad.mag() != 0) velocidad.mult(0.99);

    if (posicion.x<0) {
      posicion.x += width;
    }
    if (posicion.x>width) {
      posicion.x = 0;
    }
    if (posicion.y<80) {
      posicion.y += 620;
    }
    if (posicion.y>height) {
      posicion.y = 80;
    }

    if (  mostrarNave1[0]) {
      dibujarBalas();
      if (disparar[0]) {
        disparar();
      }
    }

    if (checkCollision2(asteroides)) {
      vidas1--;
      posicion2 = new PVector(width/2, height/2);
      dibujarNave2();
    }
    tiempo = millis();
    mostrarPuntaje();
    Boolean2();
    velocidad2.add(accel2);
    accel2.limit(0.8);
    posicion2.add(velocidad2);
    if (  mostrarNave2[0]) {
      dibujarNave2();
    }

    accel2.set(0, 0, 0);
    if (velocidad2.mag() != 0) velocidad2.mult(0.99);

    if (posicion2.x<0) {
      posicion2.x += width;
    }
    if (posicion2.x>width) {
      posicion2.x = 0;
    }
    if (posicion2.y<80) {
      posicion2.y += 620;
    }
    if (posicion2  .y>height) {
      posicion2.y = 80;
    }
    if (  mostrarNave2[0] ) {
      dibujarBalas2();
      if (disparar2[0]) {
        disparar2();
      }
    }


    if ( tiempo > t_actualizado + t_retardo) 
    {
      PVector aPosicion = new PVector (random(width), random(height));
      multV = 1;
      multV *= 1.5;
      asteroides.add(new Asteroide(multV, aPosicion, radio, asteroidesFoto));
      t_actualizado = tiempo;
    }

    for (int i = 0; i < balas.size(); i++) {
      if (i < 0) {
        break;
      }
      balas.get(i).mostrar();
      if (balas.get(i).checkCollision(asteroides)) {
        balas.remove(i);
        i--;
      }
    }

    for (int i = 0; i < balas2.size(); i++) {
      if (i < 0) {
        break;
      }
      balas2.get(i).mostrar2();
      if (balas2.get(i).checkCollision2(asteroides)) {
        balas2.remove(i);
        i--;
      }
    }

    for (Asteroide a : asteroides) {
      a.update();
      a.edges();
      a.mostrar();
    }



    if (!mostrarNave1[0] && !mostrarNave2[0]) {
      nivel=3;
      if(reiniciar[0] && nivel==3){
  reiniciar();}
    }
    if (nivel ==3 && puntaje==puntaje1){
      background(0);
      fill(random(255),random(255),random(255));
      textSize(60);
      text(" EMPATE ", 280, height/2);
      fill(255);
      textSize(40);
      text(" Para volver a jugar presione H ", 280, 100);
    }
    if (nivel==3 && puntaje>puntaje1) {
      background(0);
      fill(16, 24, 222);
      textSize(60);
      text(" GANADOR JUGADOR AZUL ", 280, height/2);

      fill(255);
      textSize(40);
      text(" Para volver a jugar presione H ", 280, 100);
      fill(249, 0, 0);
    }

    if (nivel==3 && puntaje1>puntaje) {
      background(0);
      fill(249, 0, 0);
      textSize(60);
      text(" GANADOR JUGADOR ROJO ", 280, height/2);

      fill(255);
      textSize(40);
      text(" Para volver a jugar presione H ", 280, 100);
      fill(249, 0, 0);
    }
  }
}

void reiniciar() {

  nivel=1;
  vidas = 3;
  vidas1 = 3;
  puntaje = 0;
  puntaje1 = 0;
  balas = new ArrayList<Bala>();
  balas2 = new ArrayList<Bala2>();
  asteroides = new ArrayList<Asteroide>();
  mostrarNave1[0]= true;
  mostrarNave2[0]= true;
}
void inicio() {
  if (nivel== 1) {

    PVector aPosicion = new PVector (random(width), random(height));
    asteroides.add(new Asteroide(multV, aPosicion, radio, asteroidesFoto));
  }
}
