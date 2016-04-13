Catcher catcher;
Drop[] drops;
Timer timer; //timer object
int totalDrops = 0;

//**NEW
// A boolean to let us know if the game is over
boolean gameOver = false;

// Variables to keep track of score, level, lives left
int score = 0;      // User's score
int level = 1;      // What level are we on
int lives = 10;     // 10 lives per level (10 raindrops can hit the bottom)
int levelCounter = 0;

PFont f;
//**


void setup() {
  size(640, 360);
  catcher = new Catcher(32);
  drops = new Drop[50];
  timer = new Timer(300);    // Create a timer that goes off every 300 milliseconds
  timer.start();             // Starting the timer

  //**NEW
  f = createFont("Arial", 12, true); // A font to write text on the screen
  //**
}

void draw() {
  background(255);

  //**NEW
  // If the game is over
  if (gameOver) {
    textFont(f, 48);
    textAlign(CENTER);
    fill(0);
    text("GAME OVER", width/2, height/2);
  } else {
    //**

    //Set Catcher Location
    catcher.setLocation(mouseX, mouseY);
    //Display Catcher
    catcher.display();

    // Check the timer
    if (timer.isFinished()) {
      // Deal with raindrops
      // Initialize one drop


      //**NEW
      //MOVE drops[totalDrops] = new Drop();

      // Increment totalDrops
      totalDrops ++ ;
      // If we hit the end of the array
      if (totalDrops >= drops.length) {

        //**NEW
        drops[totalDrops] = new Drop();
        //**

        totalDrops++; // Start over
      }
      timer.start();
    }



    for (int i=0; i < totalDrops; i++) {
      //**NEW
      if (!drops[i].finished) {
        //**

        drops[i].move();
        drops[i].display();

        //**NEW 
        if (drops[i].reachedBottom()) {
          levelCounter++;
          drops[i].finished(); 
          // If the drop reaches the bottom a live is lost
          lives--;
          // If lives reach 0 the game is over
          if (lives <= 0) {
            gameOver = true;
          }
        } 
        //**


        //if statement for intersection, score goes up
        if (catcher.intersect(drops[i])) {
          //**NEW
          drops[i].finished();
          levelCounter++;
          score++;
          //**
        }
      }

      //// Check the timer
      //if (timer.isFinished()) {
      //  // Deal with raindrops
      //  // Initialize one drop


      //  //**NEW
      //  //MOVE drops[totalDrops] = new Drop();

      //  // Increment totalDrops
      //  totalDrops ++ ;
      //  // If we hit the end of the array
      //  if (totalDrops >= drops.length) {

      //    //**NEW
      //    drops[totalDrops] = new Drop();
      //    //**

      //    totalDrops++; // Start over
      //  }
      //  timer.start();
      //}
    }//This is amount we'll have naturally
    //**NEW
    // If all the drops are done, that leve is over!
    if (levelCounter >= drops.length) {
      // Go up a level
      level++;
      // Reset all game elements
      levelCounter = 0;
      lives = 10;
      timer.setTime(constrain(300-level*25, 0, 300));
      totalDrops = 0;
    }

    // Display number of lives left
    textFont(f, 14);
    fill(0);
    text("Lives left: " + lives, 10, 20);
    rect(10, 24, lives*10, 10);

    text("Level: " + level, 300, 20);
    text("Score: " + score, 300, 40);
  }
}
//**