import processing.video.*;
Capture video;
int videoScale = 8;
int cols, rows;
void setup(){
  size(640,480);
  cols = width / videoScale;
  rows = height / videoScale;
  video = new Capture(this,80,60);
  video.start();
}
void captureEvent(Capture video){
  video.read();
}
void draw(){
  video.loadPixels();
  //cols for loop
  for (int i = 0; i < cols; i++){
    //rows for loop
      for (int j = 0; j < rows; j++){
        
        int x = i * videoScale;
        int y = j * videoScale;
        color c = video.pixels[i + j * video.width];
         fill(c);
         stroke(0);
         rect(x,y,videoScale, videoScale);
      }
  }
}