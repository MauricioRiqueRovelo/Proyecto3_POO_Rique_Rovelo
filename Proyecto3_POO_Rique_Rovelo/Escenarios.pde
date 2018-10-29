 class Escenarios implements Pantalla{
  float x = 0, y = 0;
  int num, ab;
  float contador;
  PImage fondo1[] = new PImage[5];
  
  Escenarios(){
  }
    
  void fondoPantalla(){
      for (int i = 0; i < 5; i++){
        this.fondo1[i] = loadImage("Escenario" + this.num + "_" + this.ab + "_" + i + ".jpg");
      }
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
        contador += 0.4;
        image(fondo1[floor(contador)%5], x, y);
        break;
      case 2:
        contador += 0.4;
        image(fondo1[floor(contador)%5], x, y);
        break;
    }
  }
}
