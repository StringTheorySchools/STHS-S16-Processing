void setup(){
  size(200, 200);
}

void draw(){
  background(255);
  rectMode(CENTER);
  ellipseMode(CENTER);
  
  translate(mouseX,mouseY);
  noCursor();
  
  //Zoog's Body
  stroke(0);
  fill(175);
  rect(0,0,20,100);
  
  //Zoog's Head
  stroke(0);
  fill(255);
  ellipse(0,-30,60,60);
  
  //eyes
  stroke(0);
  fill(255);
  ellipse(-19, -30,16,31);
  ellipse(19, -30,16,31);
  
  //legs
  stroke(0);
  line(-10,50,-20,60);
  line(10,50,20,60);
}