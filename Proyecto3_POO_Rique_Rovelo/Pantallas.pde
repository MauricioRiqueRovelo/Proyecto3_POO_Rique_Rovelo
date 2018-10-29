class Pantallas implements Pantalla{
  float x = 0, y = 0;
  int num, pant2;
  int j = 5;
  float contador;
  PImage fondo1;
  PImage fondo2[] = new PImage[5];
  
  Pantallas(){
  }
  
  void fondoPantalla(){
    if (this.num == 2 || this.num == 3){
      for (int i = 0; i < 5; i++){
        this.fondo2[i] = loadImage("Pantalla" + this.num + "_" + i + ".jpg");
      }
    } else if (this.num == 5){
      for (int i = 0; i < 5; i++){
        this.fondo2[i] = loadImage("Pantalla2_" + j + ".jpg");
        j++;
      }
    }else {
    this.fondo1 = loadImage("Pantalla" + this.num + ".jpg");
    }
  }
  
  int numPantalla(int num_){
    this.num = num_;
    return this.num;
  }
  
  int numPantalla(int num_, int ab_){
    this.num = num_;
    return this.num;
  }
  
  void display (int num_){
    this.num = num_;
    switch(this.num){
      case 1:
        image(this.fondo1, this.x, this.y);
        break;
      case 2:
        this.contador += 0.5;
        image(this.fondo2[floor(this.contador)%5], this.x, this.y);
        break;
      case 3:
        this.contador += 0.5;
        image(this.fondo2[floor(this.contador)%5], this.x, this.y);
        break;
      case 4:
        image(this.fondo1, this.x, this.y);
        break;
      case 5:
        this.contador += 0.5;
        image(this.fondo2[floor(this.contador)%5], this.x, this.y);
        break;
    }
  }
}
