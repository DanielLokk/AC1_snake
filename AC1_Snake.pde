Frog frog;
Snake snake;
int timer, food;
PImage img;

void setup() {
  size(640,640);
  img = loadImage("frog.png");
  frog = new Frog(img);
  snake = new Snake();
  food = 0;
  timer = 60;
}
 
void draw() {
  background(139,69,19);
  
  
  // Col·lisio entre frog i snake, nomès funciona amb el primer de la array
  if (dist(frog.getLoc().x, frog.getLoc().y, snake.getLoc().x, snake.getLoc().y) < 20) {
    food++;
    frog = new Frog(img);
    snake.crecer();
  }
  
  
  
  textSize(20);
  text("Time: " + (timer - millis()/1000), 15, 40);
  text("Food: " + food, 15, 70);
  
  snake.update();
  snake.display();
  

  frog.update();
  frog.checkEdges();
  frog.display();
  
  // TODO: Condició de victoria
  if ((timer - millis()/1000) == 0) {
    textAlign(CENTER);
    fill(255);
    textSize(50);
    text("Time is out!!", width/2, height/2);
    textSize(20);
    text("You have eaten " + food + " worms", width/2, height/2 + 30);
    noLoop();
  }
}
