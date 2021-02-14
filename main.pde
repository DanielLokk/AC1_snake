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
  
  
  // Col·lisio entre frog i snake, nomès funciona amb el primer de la array
  if (dist(frog.getLoc().x, frog.getLoc().y, snake.get(0).getLoc().x, snake.get(0).getLoc().y) < 20) {
    food++;
    frog = new Frog();
    snake.add(new Snake(snake.get(0).getLoc().x + 20, snake.get(0).getLoc().y + 20));
  }
  
  // TODO: Condició de victoria
  if (timer == 0) {
    
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
