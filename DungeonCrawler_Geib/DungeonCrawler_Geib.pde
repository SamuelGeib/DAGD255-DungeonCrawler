float dt;
int circleAmount = 10000;

ArrayList<Circle> circles = new ArrayList();
ArrayList<Pickup> pickups = new ArrayList();
Camera cam;
Player player;
AABB aabb;
HUD hud;

// Instantiate Textures...
PImage grass = loadImage("grassTile.png");


void setup() {
  size(1280, 720);
  background(220);

  player = new Player(width/2, height/2);
  cam = new Camera(player);
  hud = new HUD();

  for (int i = 0; i < circleAmount; i++) {
    Circle c = new Circle();
    circles.add(c);
  }
}

void draw() {
  // INITIALIZE FRAME
  background(220);

  // THE MAGIC LINE. Respect
  pushMatrix();
  translate(-cam.x, -cam.y);


  // UPDATE
  cam.update();
  player.update();




  // DRAW
  player.draw();

  // Draw All Circles
  for (int i = 0; i < circles.size(); i++) {
    if(circles.get(i).x > 0 && circles.get(i).x < width && circles.get(i).y < height && circles.get(i).y > 0);
    circles.get(i).draw();
  }
  
  popMatrix();
  // DRAW HUD

  // PREP FOR NEXT_FRAME
  Keyboard.update();
}

void keyPressed() {
  Keyboard.handleKeyDown(keyCode);
}

void keyReleased() {
  Keyboard.handleKeyUp(keyCode);
}

void calcDeltaTime() {
  
}
