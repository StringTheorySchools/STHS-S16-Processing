import processing.sound.*;
SoundFile file, file1;
boolean bounce, toot;
int w = width; 
int h = height;
float r0 = 150;
float r1 = 30;

void setup() { //setup function runs once
  size(300, 300); //sets window size
  file = new SoundFile(this, "bounce.mp3");
  file1 = new SoundFile(this, "toot.mp3");
}

void draw() { //function runs over and over
  int w = width; 
  int h = height;

  background(255);
  stroke(0);
  strokeWeight(4);
  if (mousePressed == true) {
    fill(255, 200, 0);
    float r2 = random(-2, +2);
    ellipse(w/2, h/2+r2, 200, 200);
    translate(0, 45);
    int eyeHeight = 2;
    float r0 = random(140, 150);
    float r1 = random(20, 30);
    fill(255);
    ellipse(w/2-50, h/2-55+r2, 30, eyeHeight);
    ellipse(w/2+50, h/2-55+r2, 30, eyeHeight);
    curve(w/2, h/2+r0, w/2+50, h/2+r2, w/2-50, h/2+r2, w/2, h/2+r0);
    curve(w/2-10, h/2-r1, w/2-50, h/2+r2, w/2+50, h/2+r2, w/2+10, h/2-r1);
  } else {
    fill(255, 200, 0);
    float r2 = 0;
    ellipse(w/2, h/2+r2, 200, 200);
    int eyeHeight = 15;
    fill(0);
    translate(0, 45);
    ellipse(w/2-50, h/2-55, 30, eyeHeight);
    ellipse(w/2+50, h/2-55, 30, eyeHeight);
    float r0 = 150;
    float r1 = 30;
    fill(255);
    curve(w/2, h/2+r0, w/2+50, h/2, w/2-50, h/2, w/2, h/2+r0);
    curve(w/2-10, h/2-r1, w/2-50, h/2, w/2+50, h/2, w/2+10, h/2-r1);
  }
}
void mousePressed() {
  if (mousePressed && bounce == false) {
    file.play();
    bounce = true;
  }
  toot = false;
  float r2 = random(-2, 2);
}
void mouseReleased() {
  file.stop();
  bounce = false;
  if (toot == false) {
    file1.play();
    toot = true;
    float r2 = 0;
  }
}