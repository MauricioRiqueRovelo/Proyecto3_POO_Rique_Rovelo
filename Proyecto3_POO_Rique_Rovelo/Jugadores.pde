class Jugadores{
  Personaje personaje1, personaje2, personaje3, personaje4, personaje5;
  int p1, p2, p2_b, p3, p4, esc1, esc2;
  int jugador = 1;
  int vida = 200, dano;
  int barrax = 100, barray = 350;
  
  Jugadores(){
    this.personaje1 = new Commander_Shepard();
    this.personaje2 = new Scorpion();
    this.personaje3 = new Predator();
    this.personaje4 = new Master_Chief();
    this.personaje5 = new Shaguzu();
    
  }
        
  void display (int num){
    switch (num){
          case 1:
            this.personaje1.display();
            break;
            
          case 2:
            this.personaje2.display();
            break;
            
          case 3:
            this.personaje3.display();
            break;
            
          case 4:
            this.personaje4.display();
            break;
            
          case 5:
            this.personaje5.display();
            break;
          }
  }
  
  void danado (int num){
    switch (num){
          case 1:
            this.personaje1.danado();
            break;
            
          case 2:
            this.personaje2.danado();
            break;
            
          case 3:
            this.personaje3.danado();
            break;
            
          case 4:
            this.personaje4.danado();
            break;
            
          case 5:
            this.personaje5.danado();
            break;
          }
  }
  
  void poderes (int num){
    switch (num){
          case 1:
            this.personaje1.nombrePoderes();
            break;
            
          case 2:
            this.personaje2.nombrePoderes();
            break;
            
          case 3:
            this.personaje3.nombrePoderes();
            break;
            
          case 4:
            this.personaje4.nombrePoderes();
            break;
            
          case 5:
            this.personaje5.nombrePoderes();
            break;
          }
  }
  
  int dano (int personaje, int habilidad){
    if (personaje == 1){
        switch(habilidad){
          case 1:
            this.dano = this.personaje1.dano(1);
            break;
          case 2:
            this.dano = this.personaje1.dano(2);
            break;
          case 3:
            this.dano = this.personaje1.dano(3);
            break;
        }
    }
    
    else if (personaje == 2){    
        switch(habilidad){
          case 1:
            this.dano = this.personaje2.dano(1);
            break;
          case 2:
            this.dano = this.personaje2.dano(2);
            break;
          case 3:
            this.dano = this.personaje2.dano(3);
            break;
        }
    }
    
    else if (personaje == 3){
        switch(habilidad){
          case 1:
            this.dano = this.personaje3.dano(1);
            break;
          case 2:
            this.dano = this.personaje3.dano(2);
            break;
          case 3:
            this.dano = this.personaje3.dano(3);
            break;
        }
    }
    
    else if (personaje == 4){
        switch(habilidad){
          case 1:
            this.dano = this.personaje4.dano(1);
            break;
          case 2:
            this.dano = this.personaje4.dano(2);
            break;
          case 3:
            this.dano = this.personaje4.dano(3);
            break;
        }
    }
    
    else if (personaje == 5){
        switch(habilidad){
          case 1:
            this.dano = this.personaje5.dano(1);
            break;
          case 2:
            this.dano = this.personaje5.dano(2);
            break;
          case 3:
            this.dano = this.personaje5.dano(3);
            break;
        }
    }
    
    return this.dano;
  }
  
  void golpe(int dano_){
    this.vida -= dano_;
  }
  
  void barraVida(){
    fill(255, 0, 0);
    stroke(3);
    rect(barrax, barray, 5, 200);
    
    fill(0, 255, 0);
    rect(barrax, barray, 5, this.vida);
  }
}
