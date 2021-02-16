/**
 * Classe Snake
 *  controlada amb el mouse
 *  creix amb cada frog menjada
 */
class Snake {
 
  PVector location;
  PVector velocity;
  PVector acceleration;
  int tamano;
  //ArrayList<PVector> cuerpo = new ArrayList<PVector>();
 
  /**
   * Constructor de classe
   */
  Snake() {
    
    location = new PVector(width/2,height/2);
    velocity = new PVector(2,2);
    tamano = 25; 
    //cuerpo.add(new PVector(location.x, location.y));
    
  }
  
  Snake(float x, float y) {
    
    location = new PVector(x,y);
    velocity = new PVector(2,2);
    tamano = 25; 
    //cuerpo.add(new PVector(location.x, location.y));
    
  }
  
  /**
   * Retorna location actual de la granota
   */
  PVector getLoc() {
    return location;
  }
  
  PVector getVelocity() {
    return velocity;
  }
  
  /**
   * Defineix en quina direcció anirà la serp, guiada per el mouse
   */
  void update() {
    
    PVector mouse = new PVector(mouseX,mouseY);
    PVector dir = PVector.sub(mouse, location);
    
    dir.normalize();
    dir.mult(0.5);
    
    acceleration = dir;
    
    velocity.add(acceleration);
    velocity.limit(4);
    location.add(velocity);
    
  }
  
  /**
   * Mostra la serp i el seu conjunt de ellipses que formen el cos
   */
  void display() {
    
    fill(0, 128, 60);
    stroke(0, 64, 30);
    strokeWeight(1);
    
    //for(PVector c : cuerpo) {
      ellipse(location.x + tamano/2, location.y + tamano/2, tamano, tamano);
    //}
    
    //cuerpo.add(new PVector(location.x, location.y));
    //cuerpo.remove(0); 
  }
  
  /**
   * Si es crida la funcio crecer() afegim un nou vector a la ArrayList cuerpo
   */
  //void crecer() {
  //  cuerpo.add(new PVector(location.x, location.y));
  //}
  
  
  void setLocation(PVector velocity) {
    velocity.limit(4); 
    this.location.add(velocity.mult(1/4));
    
     
  }
}
