class Predator implements Personaje{
  int x = 0, y = 0;
  int dano, habilidad;
  PImage personaje, danado, nombrepoderes;
  String nombre = "Predator";
  
  Predator(){
    this.personaje = loadImage(this.nombre + ".png");
    this.danado = loadImage(this.nombre + "_golpeado.png");
    this.nombrepoderes = loadImage(this.nombre + "_poderes.png");
  }
  
  void display(){
    image(this.personaje, this.x, this.y);
  }
  
  void danado(){
    image(this.danado, this.x, this.y);
  }
  
  int dano(int habilidad_){
   this.habilidad = habilidad_;
   
   switch(this.habilidad){
     case 1:
       this.dano = round(random(10, 16));
       break;
       
     case 2:
       this.dano = round(random(8, 14));
       break;
       
     case 3:
       this.dano = round(random(6, 12));
       break;
   }
   
   return this.dano;
  }
  
  void nombrePoderes(){
    image(this.nombrepoderes, this.x, this.y);
  }
}
