class Board {
  int [] squarePosX = {32,64,96,128,160,192,224,256,288,320,352,384,416,448,480,512,544,576,608,640,672,704,736,768};
  int [] squarePosY = {32,64,96,128,160,192,224,256,288,320,352,384,416,448,480,512,544,576,608,640,672,704,736,768};
  Square[][] board = new Square[squarePosX.length][squarePosY.length];
  int nbSquares;
  
  Board() {
   for (int x = 0 ; x < squarePosX.length; x++) {
     for (int y = 0 ; y < squarePosY.length; y++) {
       board[x][y]= new Square(new Position(squarePosX[x],squarePosY[y]),SquareType.GRASS);      
     }
   }
   this.nbSquares = width/32;
  }
  
  Square [][] getBoard() {
    return this.board;
  }
  
  void display() {
    for (int x = 0 ; x < squarePosX.length; x++) {
     for (int y = 0 ; y < squarePosY.length; y++) {
       image(board[x][y].getImage(),squarePosX[x],squarePosY[y]);     
     }
   }
  }
  
  int getNbSquare() {
    return this.nbSquares;
  }
}
