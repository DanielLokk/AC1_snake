Frog frog;
ArrayList<Snake> snake;
int timer, food;

void setup() {
  size(640,640);
  frog = new Frog();
  snake = new ArrayList<Snake>();
  snake.add(new Snake(width/2, height/2));
  food = 0;
  timer = 60;
}
 
void draw() {
  background(255);
  
  if ((abs(frog.getLoc().x - snake.get(0).getLoc().x) <= 20) && (abs(frog.getLoc().y - snake.get(0).getLoc().y) <= 20)) {
    food++;
    frog = new Frog();
    snake.add(new Snake(snake.get(0).getLoc().x + 20/2, snake.get(0).getLoc().y + 20/2));
  }
  
  if (timer == 0) {
    //TODO: implementa winner
  }
  
  textSize(20);
  text("Time: " + (timer - millis()/1000), 15, 40);
  text("Food: " + food, 15, 70);

  for (Snake s : snake){
    s.update();
    s.display();
  }

  frog.update();
  frog.checkEdges();
  frog.display();
}

class Frog {
  
  PVector location;
  PVector velocity;
  
  Frog() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(2), random(2));
  }
  
  PVector getLoc() {
    return location;
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16);
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
