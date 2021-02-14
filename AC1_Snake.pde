Frog frog;
Snake snake;
int timer, food;

void setup() {
  frog = new Frog();
  snake = new Snake();
  food = 0;
  timer = 60;
}
public void settings() {
  size(640, 640);
}
 
void draw() {
  background(255);
  // Col·lisio entre frog i snake, nomès funciona amb el primer de la array
  if (dist(frog.getLoc().x, frog.getLoc().y, snake.getLoc().x, snake.getLoc().y) < 20) {
    food++;
    frog = new Frog();
    snake.crecer();
  }
  
  // TODO: Condició de victoria
  if (timer == 0) {
    
  }
  
  textSize(20);
  text("Time: " + (timer - millis()/1000), 15, 40);
  text("Food: " + food, 15, 70);

  
  snake.display();
  snake.update();
  
  frog.update();
  frog.checkEdges();
  frog.display();
}