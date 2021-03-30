public enum Direction {
  NORTH(0,-1),
  SOUTH (0,1),
  EAST (1,0),
  WEST (-1,0);
  
  float x;
  float y;
  
  private Direction(float x, float y){
   this.x =x;
   this.y=y;
  }
  
  float getX() {
    return this.x;
  }
  
  float getY() {
   return this.y; 
  }
  
  
}
