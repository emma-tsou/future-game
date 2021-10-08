boolean upkey, downkey, leftkey, rightkey, spacekey;
Ship myShip;
ArrayList<GameObject> myObjects;

void setup() {
  size(800, 600);
  imageMode(CENTER);
  myShip = new Ship();
   myObjects = new ArrayList<GameObject>();
  myObjects.add(myShip);
  myObjects.add(new Asteroid()); 
  myObjects.add(new Asteroid()); 
  myObjects.add(new Asteroid()); 
  
}

void draw() {
  background(0);
  

  int i = 0;
  GameObject myObj = myObjects.get(i);
myObj.show();
myObj.act();
    i++;
  }
}

void keyPressed() {
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (key == ' ') spacekey = true;
}

void keyReleased() {
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (key == ' ') spacekey = false;
} 
