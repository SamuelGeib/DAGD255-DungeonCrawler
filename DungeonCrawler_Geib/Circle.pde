// Static Cirtcles to spawn in the level
class Circle extends AABB {
  float diameter;
  Circle() {
    diameter = random(8, 64);
    x = random(-width * 5, width * 5);
    y = random (-height * 5, height * 5);
    
  }
  
  void draw() {
    if(!isOnScreen()) return; // Don't bother drawing the circles if they are not on the screen
    fill(#E0601D);
    ellipse(x, y, diameter, diameter);
  }
  
  boolean isOnScreen() {
    if (x <= cam.x - diameter)                         return false;
    if (x >= cam.x + width + diameter)                 return false;
    if (y <= cam.y - diameter)                         return false;
    if (y >= cam.y + height + diameter)                return false; 
    return true; 
  }
  
}
