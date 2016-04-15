Catcher catcher;
Drop[] drops;
Timer timer;
int totalDrops = 0;

boolean gameOver = false;

int score = 0;
int level = 1;
int lives = 1;
int levelCounter = 0;
PFont f;

void setup() {
  size(640, 360);

  catcher = new Catcher(32);
  drops = new Drop[50];
  timer = new Timer(300);
  timer.start();
  noCursor();
  f = createFont("Arial", 12, true);
}


void draw() {
  background(255);

  if (gameOver) {
  } else {


    catcher.setLocation(mouseX, mouseY);
    catcher.display();

    //check the Timer
    if (timer.isFinished()) {
      //increment drop below..
      totalDrops++;//THISISTHEBUG
      if (totalDrops < drops.length) {
        drops[totalDrops] = new Drop();
        totalDrops++;
      }
      timer.start();
    }

    for (int i = 0; i < totalDrops; i++) {
      if (!drops[i].finished) {
        drops[i].move();
        drops[i].display();

        if (drops[i].reachedBottom()) {
          levelCounter++;
          drops[i].finished();
          lives--;
          if (lives <= 0) {
            gameOver = true;
          }
        }

        //if statment for intersection
        if (catcher.intersect(drops[i])) {
          drops[i].finished();
          levelCounter++;
          score++;
        }
      }
    }
    if (levelCounter >= drops.length) {
      level++;
      levelCounter= 0;
      lives= lives + 1;
      totalDrops = 0;
      timer.setTime(constrain(300-level*25, 0, 300));
    }
  }
}