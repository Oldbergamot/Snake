class Player{
  
  Direction direction;
  IntList snakeX;
  IntList snakeY;
  
  Player(){
    
    this.direction = Direction.NORTH;
    snakeX = new IntList();
    snakeY = new IntList();
    snakeX.append(board.getNbSquare()/2);
    snakeY.append(board.getNbSquare()/2);
    this.addBody();
    this.addBody();
    this.addBody();
    this.addBody();

  }
  
  void addBody(){
      if(direction == Direction.NORTH){   
          snakeX.insert(0,snakeX.get(0) );
          snakeY.insert(0,snakeY.get(0)- 1 );
      }
      if(direction == Direction.EAST){
          snakeX.insert(0,snakeX.get(0)+1 );
          snakeY.insert(0,snakeY.get(0) );
      }
      if(direction == Direction.SOUTH){
          snakeX.insert(0,snakeX.get(0) );
          snakeY.insert(0,snakeY.get(0)+1 );
      }
      if(direction == Direction.WEST){
          snakeX.insert(0,snakeX.get(0)-1 );
          snakeY.insert(0,snakeY.get(0) );
      }   
  }
  
  void display() {
    for(int i  = 0; i < snakeX.size(); i++){
      rect(snakeX.get(i)*32, snakeY.get(i)*32, 32,32);
    }
  }
  
  void setDirection(Direction direction) {
    this.direction = direction;
  }
  
  void move(){
    for(int i  = snakeX.size()-1; i > 0; i--){
      snakeX.set(i,snakeX.get(i-1));
      snakeY.set(i,snakeY.get(i-1));
    } 
    if(direction == Direction.NORTH ) snakeY.set(0,snakeY.get(0)-1);
    if(direction == Direction.EAST) snakeX.set(0,snakeX.get(0)+1);
    if(direction == Direction.SOUTH) snakeY.set(0,snakeY.get(0)+1);
    if(direction == Direction.WEST) snakeX.set(0,snakeX.get(0)-1);
  }
  
}
