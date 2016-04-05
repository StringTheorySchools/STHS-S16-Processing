Catcher catcher;
Drop[] drops;
int totalDrops = 0;

void setup(){
  size(640,360);
  catcher = new Catcher(32);
  drops = new Drop[1000];
}

void draw(){
  background(255);
  catcher.setLocation(mouseX,mouseY);
  catcher.display();
  
  for(int i=0; i < totalDrops; i++){
    drops[i].move();
    drops[i].display();
    //if statement for intersection
  }
}