
class Snake {
 
  PVector location;
  PVector velocity;
  PVector acceleration;
  int tamano;
 
  Snake(float x, float y) {
    location = new PVector(x,y);
    velocity = new PVector(2,2);
    tamano = 20; 
  }
  
    
  PVector getLoc() {
    return location;
  }
  
  void update() {
    
    PVector mouse = new PVector(mouseX,mouseY);
    PVector dir = PVector.sub(mouse, location);
    
    dir.normalize();
    
    dir.mult(0.5);
    
    acceleration = dir;
    
    velocity.add(acceleration);
    velocity.limit(3);
    location.add(velocity);
 
  }
  
  void display() {
    
    fill(0, 128, 60);
    stroke(0, 64, 30);
    strokeWeight(1);
    
    
    ellipse(location.x, location.y, tamano, tamano);
    
    
    //for(PVector c : cuerpo) {
    //  
    //  cuerpo.add(new PVector(location.x, location.y));
    //  cuerpo.remove(0);
    //}
    
  }
  
}
