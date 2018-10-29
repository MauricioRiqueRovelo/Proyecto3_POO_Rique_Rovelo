class Flujo{
  Pantalla pantalla1, pantalla2, pantalla2_b, pantalla3, pantalla4, escenario1, escenario1a, escenario1b, escenario1final, escenario2, escenario2a, escenario2b, escenario2final;
  int p1, p2, p2_b, p3, p4, esc1, esc1a, esc1b, esc1final, esc2, esc2a, esc2b, esc2final;
  int num_pant = 1, num_esc, num_char1 = 0, num_char2 = 0;
  
  
  Flujo(){
    this.pantalla1 = new Pantallas();
    this.pantalla2 = new Pantallas();
    this.pantalla2_b = new Pantallas();
    this.pantalla3 = new Pantallas();
    this.pantalla4 = new Pantallas();
    this.escenario1 = new Escenario();
    this.escenario1a = new Escenarios();
    this.escenario1b = new Escenarios();
    this.escenario1final = new Escenarios_Finales();
    this.escenario2 = new Escenario();
    this.escenario2a = new Escenarios();
    this.escenario2b= new Escenarios();
    this.escenario2final = new Escenarios_Finales();
    
  }
  
  void flujoPantallas(){
    
    this.p1 = this.pantalla1.numPantalla(1);
    this.pantalla1.fondoPantalla();
    
    this.p2 = this.pantalla2.numPantalla(2);
    this.pantalla2.fondoPantalla();
    
    this.p2_b = this.pantalla2_b.numPantalla(5);
    this.pantalla2_b.fondoPantalla();
    
    this.p3 = this.pantalla3.numPantalla(3);
    this.pantalla3.fondoPantalla();
    
    this.p4 = this.pantalla4.numPantalla(4);
    this.pantalla4.fondoPantalla();
    
    this.esc1 = this.escenario1.numPantalla(1);
    this.escenario1.fondoPantalla();
    
    this.esc1a = this.escenario1a.numPantalla(1);
    this.esc1a = this.escenario1a.numPantalla(1, 1);
    this.escenario1a.fondoPantalla();
    
    this.esc1b = this.escenario1b.numPantalla(1);
    this.esc1b = this.escenario1b.numPantalla(1, 2);
    this.escenario1b.fondoPantalla();
    
    this.esc1final = this.escenario1final.numPantalla(1);
    this.escenario1final.fondoPantalla();
    
    this.esc2 = this.escenario2.numPantalla(2);
    this.escenario2.fondoPantalla();
    
    this.esc2a = this.escenario2a.numPantalla(2);
    this.esc2a = this.escenario2a.numPantalla(2, 1);
    this.escenario2a.fondoPantalla();
    
    this.esc2b = this.escenario2b.numPantalla(2);
    this.esc2b = this.escenario2b.numPantalla(2, 2);
    this.escenario2b.fondoPantalla();
    
    this.esc2final = this.escenario2final.numPantalla(2);
    this.escenario2final.fondoPantalla();
  }

  void display(){
    switch (this.num_pant){
      case 1:
        this.pantalla1.display(this.p1);
        break;
        
      case 2:
        this.pantalla2.display(this.p2);
        break;
        
      case 3:
        this.pantalla3.display(this.p3);
        
        switch(this.num_esc){
          case 1:
            this.escenario1a.display(this.esc1a);
            break;
          case 2:
            this.escenario2a.display(this.esc2a);
            break;
          case 3:
            this.escenario1b.display(this.esc1b);
            break;
          case 4:
            this.escenario2b.display(this.esc2b);
            break;
          case 5:
            this.escenario1.display(this.esc1);
            break;
          case 6:
            this.escenario2.display(this.esc2);
            break;
          case 7:
            this.escenario1final.display(this.esc1final);
            break;
          case 8:
            this.escenario2final.display(this.esc2final);
            break;
            
        }
        
        break;
        
      case 4:         this.pantalla4.display(this.p4);
        break;
        
      case 5:
        this.pantalla2_b.display(this.p2_b);
        break;
    }
  }
}
