//Pencil App Sketch

int stroke = 1; 

void setup() {
  size(200, 200);
  background(255);
}
void draw() {
  stroke(0);
  strokeWeight(stroke);
  if (mousePressed) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

void keyPressed() {
  if (keyCode == DOWN) {
    stroke--;
  } else {
    stroke = stroke;
  }
  if (keyCode == UP) {
    stroke++;
  } else {
    stroke = stroke;
  }
}