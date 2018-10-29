import processing.sound.*;

Flujo flujopantallas;
Jugadores jugador1, jugador2;
int seleccionado1, seleccionado2, presionado1, presionado2;
int jugador = 1, turno;
int ataque, dano1, dano2, danototal1, danototal2;
float y = 0, dy = 0.5;
int punterox1, punteroy1, punterox2, punteroy2;

int nosounds = 5;
SoundFile sound1, sound2, sound3, sound4;


void setup(){
  size (1280, 720);
  
  flujopantallas = new Flujo();
  flujopantallas.flujoPantallas();
  
  jugador1 = new Jugadores();
  jugador2 = new Jugadores();
  
sound1 = new SoundFile(this, "1.mp3");
sound2 = new SoundFile(this, "2.mp3");
sound3 = new SoundFile(this, "3.mp3");
sound4 = new SoundFile(this, "4.mp3");

if (flujopantallas.num_pant == 1){
  sound1.loop(1.0, 0.2);
} 
 
}

void draw(){

  comandos();
  flujopantallas.display();
  if (flujopantallas.num_pant == 2){
  seleccionPersonajes();
  } else if (flujopantallas.num_pant == 5){
    personajesSeleccionados();
  }
  
  seleccionEscenario();
  
  if (flujopantallas.num_pant == 3 && (flujopantallas.num_esc == 1 || flujopantallas.num_esc == 2 || flujopantallas.num_esc == 3 || flujopantallas.num_esc == 4)){
    combate();
    comandosCombate();
  }
  
  if (flujopantallas.num_pant == 4){
    ganador();
  }
  }

void combate(){
  
  if (danototal1 >= 200 || danototal2 >= 200){
    if (flujopantallas.num_esc == 1 || flujopantallas.num_esc == 3){
      flujopantallas.num_esc = 7;
    }
    
    else if (flujopantallas.num_esc == 2 || flujopantallas.num_esc == 4){
      flujopantallas.num_esc = 8;
      
    }
  }
  
  personajesCombate();
  pushMatrix();
  jugador1.barraVida();
  popMatrix();
  pushMatrix();
  translate(1080, 0);
  jugador2.barraVida();
  popMatrix();
    if (turno == 1){
      jugador1.poderes(presionado1);
      
      if (ataque != 0){
        J2Danado();
        dano1 = jugador1.dano(presionado1, ataque);
        jugador2.golpe(dano1);
        danototal2 += jugador1.dano;
        jugador1.dano = 0;
        turno = 2;
        ataque = 0;
        flujopantallas.num_esc += 2;
              
      }
  }
  
    else if (turno == 2){
      jugador2.poderes(presionado2);
      
      if (ataque != 0){
        J1Danado();
        dano2 = jugador2.dano(presionado2, ataque);
        jugador1.golpe(dano2);
        danototal1 += jugador2.dano;
        jugador1.dano = 0;
        turno = 1;
        ataque = 0;
        flujopantallas.num_esc -= 2;
      }
  }
}

void personajesCombate(){
  pushMatrix();
  translate(150, 155);
  jugador1.display(presionado1);
  popMatrix();
  
  pushMatrix();
  translate(1130, 155);
  scale(-1, 1);
  jugador2.display(presionado2);
  popMatrix(); 
}

void seleccionEscenario(){
  if (flujopantallas.num_pant == 3){
    punterox1 = mouseX; punteroy1 = mouseY;
    if (punterox1 >= 162 && punterox1 <= 482 && punteroy1 >= 362 && punteroy2 <= 542){
      if (mousePressed){
        flujopantallas.num_esc = 5;
        turno = 1;
      }
    } else if (punterox1 >= 802 && punterox1 <= 1120 && punteroy1 >= 362 && punteroy2 <= 542){
      if (mousePressed){
        flujopantallas.num_esc = 6;
        turno = 1;
      }
    }
  }
}

void seleccionPersonajes(){
  pushMatrix();
  if (jugador == 1){
    translate (80, 305);
    punterox1 = mouseX; punteroy1 = mouseY;
   
      if (punterox1 >= 62 && punterox1 <= 262 && punteroy1 >= 42 && punteroy1 <= 182){
        seleccionado1 = 1;    
        jugador1.display(seleccionado1);
              if (mousePressed){
                presionado1 = 1;
              }
      } 
      
      else if (punterox1 >= 542 && punterox1 <= 742 && punteroy1 >= 42 && punteroy1 <= 182){
        seleccionado1 = 2;    
        jugador1.display(seleccionado1);
              if (mousePressed){
                presionado1 = 2;
              }  
      } 
      
      else if (punterox1 >= 1022 && punterox1 <= 1222 && punteroy1 >= 42 && punteroy1 <= 182){
        seleccionado1 = 3;    
        jugador1.display(seleccionado1);
              if (mousePressed){
                presionado1 = 3;             
              }
      }

      else if (punterox1 >= 302 && punterox1 <= 502 && punteroy1 >= 162 && punteroy1 <= 342){
        seleccionado1 = 4;    
        jugador1.display(seleccionado1);
              if (mousePressed){
                presionado1 = 4;
              }
      }
      
      else if (punterox1 >= 782 && punterox1 <= 982 && punteroy1 >= 162 && punteroy1 <= 342){
        seleccionado1 = 5;    
        jugador1.display(seleccionado1);
              if (mousePressed){
                presionado1 = 5;
              }
      }
      
      else if (presionado1 != 0){
        jugador = 2;
        
        jugador1.display(presionado1);
      } else {
    seleccionado1 = 0;
  }
  
}
    else if (jugador == 2){
      translate (1200, 305);
      scale (-1, 1);
      punterox2 = mouseX; punteroy2 = mouseY;

      if (punterox2 >= 62 && punterox2 <= 262 && punteroy2 >= 42 && punteroy2 <= 182){
        seleccionado2 = 1;    
        jugador2.display(seleccionado2);
              if (mousePressed){
                presionado2 = 1;
              }
      } 
      
      else if (punterox2 >= 542 && punterox2 <= 742 && punteroy2 >= 42 && punteroy2 <= 182){
        seleccionado2 = 2;    
        jugador2.display(seleccionado2);
              if (mousePressed){
                presionado2 = 2;
              }  
      } 
      
      else if (punterox2 >= 1022 && punterox2 <= 1222 && punteroy2 >= 42 && punteroy2 <= 182){
        seleccionado2 = 3;    
        jugador2.display(seleccionado2);
              if (mousePressed){
                presionado2 = 3;
              }
      }

      else if (punterox2 >= 302 && punterox2 <= 502 && punteroy2 >= 162 && punteroy2 <= 342){
        seleccionado2 = 4;    
        jugador2.display(seleccionado2);
              if (mousePressed){
                presionado2 = 4;
              }
      }
      
      else if (punterox2 >= 782 && punterox2 <= 982 && punteroy2 >= 162 && punteroy2 <= 342){
        seleccionado2 = 5;    
        jugador2.display(seleccionado2);
              if (mousePressed){
                presionado2 = 5;
              }
      }
      
      else if (presionado2 != 0){
        jugador = 3;
        
        jugador2.display(presionado2);
      } else {
    seleccionado2 = 0;
  }
}



popMatrix();
if (jugador == 3){
  flujopantallas.num_pant = 5;
}
}

void personajesSeleccionados(){
  pushMatrix();
  translate (80, 305);
  jugador1.display(presionado1);
  
  translate (1120, 0);
  scale (-1, 1);
  jugador2.display(presionado2);
  popMatrix(); 
}

void comandos(){
  if (flujopantallas.num_pant == 1){
    if(keyPressed){
      switch(key){
        case ENTER:
          sound1.stop();
          flujopantallas.num_pant = 2;
          sound2.loop(1.0, 0.2);
          break;
      }
    }
  }
  
  else if (flujopantallas.num_pant == 5){
    if(keyPressed){
      switch(key){
        case BACKSPACE:
          flujopantallas.num_pant = 2;
          presionado1 = 0;
          presionado2 = 0;
          jugador = 1;
          break;
          
        case ' ':
          flujopantallas.num_pant = 3;
          break;
      }
    }
  }
  
  else if (flujopantallas.num_pant == 3 && flujopantallas.num_esc == 5){
    if(keyPressed){
      switch(key){
        case ' ':
          sound2.stop();
          sound3.loop(1.0, 0.2);
          flujopantallas.num_esc = 1;
          break;
      }
    }
  }
  
    else if (flujopantallas.num_pant == 3 && flujopantallas.num_esc == 6){
    if(keyPressed){
      switch(key){
        case ' ':
          sound2.stop();
          sound3.loop(1.0, 0.2);
          flujopantallas.num_esc = 2;
          break;
      }
    }
  }
  
      else if (flujopantallas.num_pant == 3 && flujopantallas.num_esc == 7){
    if(keyPressed){
      switch(key){
        case ' ':
          sound3.stop();
          sound4.loop(1.0, 0.2);
          flujopantallas.num_pant = 4;
          break;
      }
    }
  }
  
      else if (flujopantallas.num_pant == 3 && flujopantallas.num_esc == 8){
    if(keyPressed){
      switch(key){
        case ' ':
          sound3.stop();
          sound4.loop(1.0, 0.2);
          flujopantallas.num_pant = 4;
          break;
      }
    }
  }
  
  else if (flujopantallas.num_pant == 4){
    if(keyPressed){
      switch(key){
        case ENTER:
          sound4.stop();
          sound2.loop(1.0, 0.2);
          flujopantallas.num_pant = 2;
          flujopantallas.num_esc = 0;
          jugador1.vida = 200;
          jugador2.vida = 200;
          presionado1 = 0;
          presionado2 = 0;
          danototal1 = 0;
          danototal2 = 0;
          jugador = 1;
          break;
        
      }
    }
  }
}

void comandosCombate(){
    if (flujopantallas.num_esc == 1 || flujopantallas.num_esc == 2 || flujopantallas.num_esc == 3 || flujopantallas.num_esc == 4){
      if (turno == 1){
        if (keyPressed){
          switch(key){
            case 'a':
              ataque = 1;
              break;
              
            case 's':
              ataque = 2;
              break;
              
            case 'd':
              ataque = 3;
              break;
        }
      }
    }
    
    else if (turno == 2){
        if (keyPressed){
          switch(key){
            case 'j':
              ataque = 1;
              break;
              
            case 'k':
              ataque = 2;
              break;
              
            case 'l':
              ataque = 3;
              break;
        }
      }
    }
  }
}

void J1Danado(){
  pushMatrix();
  translate(150, 155);
  jugador1.danado(presionado1);
  popMatrix(); 
}

void J2Danado(){
  pushMatrix();
  translate(1130, 155);
  scale(-1, 1);
  jugador2.danado(presionado2);
  popMatrix(); 
}

void ganador(){
  
  
  if (danototal1 >= 200){
    pushMatrix();
    translate (1140, 200);  
    scale(-1, 1);
    jugador2.display(presionado2);
    
    for (int i = 0; i < 10; i++){
      y -= dy;
      translate(-200, -y);
      jugador1.display(presionado1);
    }
    popMatrix();
  } else if (danototal2 >= 200){
    pushMatrix();
    translate (1140, 200);
    scale(-1, 1);
    jugador1.display(presionado1);
    
    for (int i = 0; i < 10; i++){
      y -= dy;
      translate(-200, -y);
      jugador2.display(presionado2);
    }
    popMatrix();
  }
}
