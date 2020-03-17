void mostrarPuntaje(){
  fill(0);
  rect(0, 0, width,60);
  fill(249,0,0);
  textSize(40);
  text("Puntaje Jugador Rojo: ", 0, 45);
  fill(249,0,0);
  textSize(40);
  text(puntaje1, 420, 45);
  fill(16,24,222);
  textSize(40);
  text("Puntaje Jugador Azul: ",800, 45);
  fill(16,24,222);
  textSize(40);
  text(puntaje, 1220, 45);

  
  
  
  
  if(vidas > 0){
  image(corazon, 780, 35, 35, 35);
  }
  if(vidas > 1){
  image(corazon, 760, 35, 35, 35);
  }  
  if(vidas > 2){
  image(corazon, 740, 35, 35, 35);
  }  


if(vidas1 > 0){
  image(corazon1, 480, 35, 35, 35);
  }
  if(vidas1 > 1){
  image(corazon1, 500, 35, 35, 35);
  }  
  if(vidas1 > 2){
  image(corazon1, 520, 35, 35, 35);
  }  
}