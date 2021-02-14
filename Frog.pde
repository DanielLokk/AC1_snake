class Frog {
  
  PVector location;
  PVector velocity;
  PImage img;
  
  Frog(PImage img) {
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(2), random(2));
    this.img = img;
  }
  
  PVector getLoc() {
    return location;
  }
  
  void display() {
    image(img, location.x, location.y, 16, 16);
  }
  
  void update() {
    location.add(velocity); 
  }
  
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
