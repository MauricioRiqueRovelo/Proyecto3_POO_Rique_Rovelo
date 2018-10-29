class Escenario implements Pantalla{
  float x = 0, y = 0;
  int num, ab;
  float contador;
  PImage fondo1;
  
  Escenario(){
  }
    
  void fondoPantalla(){
        this.fondo1 = loadImage("Escenario" + this.num + ".jpg");
      }
  
  int numPantalla(int num_){
    this.num = num_;
    return this.num;
  }
  
  int numPantalla(int num_, int ab_){
    this.num = num_;
    this.ab = ab_;
    return this.ab;
  }

  void display (int num_){
    this.num = num_;
    switch(this.num){
      case 1:
        image(fondo1, x, y);
        break;
      case 2:
        image(fondo1, x, y);
        break;
    }
  }
}
