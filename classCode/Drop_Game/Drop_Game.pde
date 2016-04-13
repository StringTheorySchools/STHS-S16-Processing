Catcher catcher;
Drop[] drops;
Timer timer; //timer object
int totalDrops = 0;

void setup() {
  size(640, 360);
  catcher = new Catcher(32);
  drops = new Drop[1000];
  timer = new Timer(300);    // Create a timer that goes off every 300 milliseconds
  timer.start();             // Starting the timer
}

void draw() {
  background(255);
  catcher.setLocation(mouseX, mouseY);
  catcher.display();

  for (int i=0; i < totalDrops; i++) {
    drops[i].move();
    drops[i].display();
    //if statement for intersection
    if(catcher.intersect(drops[i])){
     drops[i].caught();
    }
  }

  // Check the timer
  if (timer.isFinished()) {
    // Deal with raindrops
    // Initialize one drop
    drops[totalDrops] = new Drop();
    // Increment totalDrops
    totalDrops ++ ;
    // If we hit the end of the array
    if (totalDrops >= drops.length) {
      totalDrops = 0; // Start over
    }
    timer.start();
  }
}