int x = 170;
int y = 315;
PImage maze;
float hit;
void setup() {
  size(322, 322);
  maze = loadImage("maze.png");
}
void draw() {
  background(maze); 
  hit = red(get(x, y));
  if (hit==0) {
    x = 168;
    y = 315;
  }
  pushMatrix();
  translate(x, y);
  fill(255, 0, 0);
  ellipse(0, 0, 5, 5);
  popMatrix();
}

void keyPressed(){
  if(key==CODED&& keyCode==UP){
    y--;
  }
    if(key==CODED&& keyCode==DOWN){
    y++;
  }
    if(key==CODED&& keyCode==LEFT){
    x--;
  }
    if(key==CODED&& keyCode==RIGHT){
    x++;
  }
}