boolean spin = false;
float angle = .1;
int x = 50;
int y = 50;
color g = #D36713;

void setup() {
  size(400, 400);
}
void draw() {
  background(55);
  fill(#D36713);
  noStroke();

  if (spin == false) {
    rect(x, y, 30, 30);
    ellipse(200, 200, x, y);
  } 
  if (mousePressed) {
    if (mouseX > x && mouseX < 80 && mouseY > y && mouseY < 80) {
      pushMatrix(); //keep transforms within matrix
        translate(65,65);
        rotate(angle);
        fill(g);
        rect(0, 0, 30, 30);
      popMatrix(); //end isolation
    angle += .05;
    ellipse(200, 200, x, y);
    spin=true;
    }
  } else spin = false;
  //delay(10);
}