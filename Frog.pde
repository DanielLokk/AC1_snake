/**
 * Classe Frog
 *  menjar de la serp
 *  es mou en una direccio randomitzada inicial
 *  un cop desapareix sempre apareix una altre
 */
class Frog {
  
  PVector location;
  PVector velocity;
  PImage img;
  
  /**
   * Constructor de classe carregant la imatge de la granota
   */
  Frog(PImage img) {
    
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(2), random(2));
    this.img = img;
    
  }
  
  /**
   * Retorna location actual de la granota
   */
  PVector getLoc() {
    return location;
  }
  
  /**
   * Mostra per pantalla una imatge d'una granota
   */
  void display() {
    image(img, location.x, location.y, 16, 16);
  }
  
  /**
   * Suma la velocitat de la granota a la location a cada draw()
   */
  void update() {
    location.add(velocity); 
  }
  
  /**
   * La granota rebota al xocar contra les parets
   */
  void checkEdges() {
    if (location.x > width) {
      velocity.x = velocity.x * -1;
    } else if (location.x < 0) {
      location.x = velocity.x * -1;
    }
 
    if (location.y > height) {
      velocity.y = velocity.y * -1;
    } else if (location.y < 0) {
      velocity.y = velocity.y * -1;
    }
  }
}
