void  Boolean() {
  if (teclas[0]) {
    direccion-=0.1;
  }
  if (teclas[1]) {
    direccion+=0.1;
  }
  if (teclas[2]) {
    float totalAccel2 = 0.1;                
    accel.x = totalAccel2 * sin(direccion);  
    accel.y = -totalAccel2 * cos(direccion);
  }

}

void  Boolean2() {
  if (teclas2[0]) {
    direccion2-=0.1;
  }
  if (teclas2[1]) {
    direccion2+=0.1;
  }
  if (teclas2[2]) {
    float totalAccel2 = 0.1;                
    accel2.x = totalAccel2 * sin(direccion2);  
    accel2.y = -totalAccel2 * cos(direccion2);
  }

}