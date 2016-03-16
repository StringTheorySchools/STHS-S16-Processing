class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) {
    //Making car constructor with variables for input
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }
  void display(){
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos, 30, 15);
  }
  void move(){
    xpos = xpos + xspeed;
    if (xpos > width){
      xpos = 0; }
  }
}