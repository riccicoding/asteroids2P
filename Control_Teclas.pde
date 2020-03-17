void keyPressed() {
  if (key== 'r' || key == 'R') {
    disparar2[0]=true;
    
  }
   if (key=='j' || key=='J' ) {
    teclas[0]=true;
  }
  if (key=='l' || key=='L' ) {
    teclas[1]=true;
  }
  if (key=='i' || key=='I' ) {
    teclas[2]=true;
  }
  
  if (key== 'p' || key == 'P') {
    disparar[0]=true;
    
  }
  if (key=='a' || key=='A' ) {
    teclas2[0]=true;
  }
  if (key=='d' || key=='D' ) {
    teclas2[1]=true;
  }
  if (key=='w' || key=='W' ) {
    teclas2[2]=true;
  }

    if (key== CODED) {
    if (keyCode==DOWN) {
      opciones[0]=true;
    }
  }
  if (key== CODED) {
    if (keyCode==UP)
    {
      opciones[1]=true;
    }
  }

  if (key== ENTER) {

    opciones[2]=true;
  }
  if (key==ESC) {
    opciones[3]=true;
  }
  if (key == ESC) {
    key = 0; 
  }
  if(key=='h' || key== 'H'){
    reiniciar[0]=true;
  }
}

void keyReleased() {
  if (key=='a' || key=='A' ) {
    teclas2[0]=false;
  }
  if (key=='d' || key=='D' ) {
    teclas2[1]=false;
  }
  if (key=='w' || key=='W' ) {
    teclas2[2]=false;
  }

  if (key== 'r' || key == 'R') {
    disparar2[0]=false;
 
  }
  
  if (key=='j' || key=='J' ) {
    teclas[0]=false;
  }
  if (key=='l' || key=='L' ) {
    teclas[1]=false;
  }
  if (key=='i' || key=='I' ) {
    teclas[2]=false;
  }
  
  if (key== 'p' || key == 'P') {
    disparar[0]=false;
    
  }
    if ( key== CODED) {
    if (keyCode==DOWN) {
      opciones[0]=false;
    }
  }
  if ( key== CODED) {
    if (keyCode==UP) {
      opciones[1]=false;
    }
  }

  if (key==ESC) {
    opciones[2]=false;
  }

  if (key == ESC) {
    key = 0; 
  }
   if(key=='h' || key== 'H'){
    reiniciar[0]=false;
  }
}