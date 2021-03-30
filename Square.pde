class Square {
  
  Position position;
  Boolean isOccupied;
  SquareType type;
  PImage image;
  
  
  Square(Position position, SquareType type) {
    this.position = position;
    this.isOccupied = false;
    this.type = type;
    
    switch(type) {
     case GRASS :  this.image = loadImage("grass.png");
     break;
    }    
  }
  
  PImage getImage() {
    return this.image;
  }
}
