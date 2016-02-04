void setup(){ //setup function runs once
  size(400,400); //sets window size

}
void draw(){ //function runs over and over
  if(mousePressed){ //conditional
  background(random(255),random(255),random(255));
  delay(500); //pause a sec
  }
}