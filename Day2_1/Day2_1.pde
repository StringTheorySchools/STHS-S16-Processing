int y = height;

void setup(){
  size(640,360);
  frameRate(60);
}

void draw(){
  background(0);
  stroke(255);
  y = y - 1; //decreasing y
  if (y < 0) { //if y is less than 0, do below
   y = height; //set y to window height
  }
  
  line(0,y,width,y);
  //line(x1,y1,x2,y2)
}