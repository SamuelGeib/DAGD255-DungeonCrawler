class Tile {
  PVector origin = new PVector();
  PVector center = new PVector();
  float scale = 64;
  color cell = 0;
  
  public enum Type {
    GRASS,
    PATH,
  }
    
  }

  Tile (float xPos, float yPos int cellType) {
    Type = cellType;
    origin.x = xPos;
    origin.y = yPos;
    
  }
  
  void update() {
    
  }
  
  void draw() {
    switch Type {
      
     case GRASS:
       drawGrass();
       break;
     case PATH:
       drawPath();
       break;
    }
  }
  
  void drawGrass() {
    cell = (#8CE89E);
  }
  
  void drawPath() {
    cell = (#D8D299)
  }
  
}
