Frog frog;
Snake snake;
int timer, food;

void setup() {
  size(640,640);
  frog = new Frog();
  snake = new Snake();
  food = 0;
  timer = 60;
}
 
void draw() {
  background(255);
  
  
  // Col·lisio entre frog i snake, nomès funciona amb el primer de la array
  if (dist(frog.getLoc().x, frog.getLoc().y, snake.get(0).getLoc().x, snake.get(0).getLoc().y) < 20) {
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

  
  snake.update();
  snake.display();
  

  frog.update();
  frog.checkEdges();
  frog.display();
}
