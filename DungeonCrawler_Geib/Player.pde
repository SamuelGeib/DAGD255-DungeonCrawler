class Player extends AABB{
  
  ArrayList<Pickup> inventory = new ArrayList();
  
  
  Player(float xPos, float yPos) {
    x = xPos;
    y = yPos;
    w = 32;  
    h = 32;
  }
  
  void update() {
    movePlayer();
  }
  
  // Handle player input/movement
  void movePlayer() {
    // W Key
    if(Keyboard.isDown(Keyboard.W)) {
      y -= 10;
    }
    
    // A Key
    if(Keyboard.isDown(Keyboard.A)) {
      x -= 10;
    }
    
    // S Key
    if(Keyboard.isDown(Keyboard.S)) {
      y += 10;
    }
    
    // D Key
    if(Keyboard.isDown(Keyboard.D)) {
      x += 10;
    }
  }
  
  void draw() {
    fill(#26DE30);
    rect(x-w/2, y-h/2, w, h);
  }
  
}
