Board board;
Player snake;
int nbFrame = 0;

void setup() {
  size(800,800);
  imageMode(CENTER);
  
  frameRate(60);
  
  board = new Board();
  snake = new Player();
  
  
}

void draw() {

  displayBorder();
  board.display();
  snake.display();
  
  if(nbFrame%10==0) snake.move();
  
  nbFrame++;
}

void keyPressed(){
  if(keyCode == UP)snake.setDirection(Direction.NORTH);
  if(keyCode == RIGHT)snake.setDirection(Direction.EAST);
  if(keyCode == DOWN)snake.setDirection(Direction.SOUTH);
  if(keyCode == LEFT)snake.setDirection(Direction.WEST);
}

void displayBorder(){
  rect(0,0,16,800);
  rect(0,0,800,16);
  rect(0,784,800,16);
  rect(784,0, 16,800);
  noStroke();
  fill(55,125,4);
}
