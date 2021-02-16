Frog frog;
Snake snake;
ArrayList<Snake> body; 
int timer, food;
PImage img;

void setup() {
  
  size(640,640);
  img = loadImage("frog.png");
  frog = new Frog(img);
  snake = new Snake();
  body = new ArrayList<Snake>();
  
  // Puntuacio equivalent al nº de granotes menjades
  food = 0;
  
  // Temporitzador que senyalitza la durada del joc
  timer = 60;
  
}

public void settings() {
  size(640, 640);
}
 
void draw() {
  background(255);
  background(139,69,19);
  
  
  // Col·lisio entre frog i snake, nomès funciona amb el primer de la array
  if (dist(frog.getLoc().x, frog.getLoc().y, snake.getLoc().x, snake.getLoc().y) < 20) {
    food++;
    frog = new Frog(img);
    //snake.crecer();
    grow();
  }

  // Temporitzador i score mostrats a la part superior esquerre
  textSize(20);
  fill(255);
  text("Time: " + (timer - millis()/1000), 15, 40);
  text("Food: " + food, 15, 70);
   
  snake.display();
  snake.update();
  
  for (Snake s : body) {
    s.setLocation(snake.getVelocity());
    s.display();
    s.update();
  }
  
  frog.update();
  frog.checkEdges();
  frog.display();
  
  // Condició de victoria
  if ((timer - millis()/1000) == 0) {
    
    textAlign(CENTER);
    fill(255);
    textSize(50);
    text("Time is out!!", width/2, height/2);
    textSize(20);
    text("You have eaten " + food + " worms", width/2, height/2 + 30);
    
    // Finalitza el joc sortint del draw()
    noLoop();
  }
}


void grow() {
  
  Snake snk = new Snake(snake.getLoc().x, snake.getLoc().y);
  body.add(snk);
}
