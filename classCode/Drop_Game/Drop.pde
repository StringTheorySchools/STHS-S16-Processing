class Drop{
  float x,y;
  float speed;
  color c;
  float r;
  
  Drop(){
    r = 8;
    y = -r*4;
    x = random(width);
    speed = random(1,5);
    c = color(50,100,150);
  }
  void move(){
    y += speed;
  }
  void display(){
    fill(c);
    noStroke();
    for(int i = 2; i<r; i++){
      ellipse(x,y + i*4, i*2, i*2);
    }
  }
  boolean reachedBottom(){
    if (y > height + r*4){
      return true;
    } else {
      return false;
    }
  }
}