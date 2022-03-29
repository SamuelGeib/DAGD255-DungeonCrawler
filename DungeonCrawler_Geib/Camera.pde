// IMPORTANT: Camera location is TL corner of screen. (Coords are: (0, 0) )
class Camera extends AABB {

  Player target;
  float tx, ty; // X and y target
  
  Camera(Player p) {
    target = p;
    // center of screen
    tx = target.x - width/2; 
    ty = target.y - height/2;
    x = tx;
    y = ty;
  }

  void update() {
    
    calcTargetLocation();
    moveToPlayer();
  }

  void draw() {
  }
  
  // Calculate and (if in Debug Mode) draw Camera Bounds
  void camBounds() {
    
  }
  
  // Ease Towards Player
  void moveToPlayer() {
   float p = 0.05;
   float dx = tx - x; // Distance to X
   float dy = ty - y; // Distance to Y
   
   x += dx * p;
   y += dy * p*1.17;
  }
  
  void calcTargetLocation() {
   tx = target.x - width/2; 
   ty = target.y - height/2; 
  }
}
