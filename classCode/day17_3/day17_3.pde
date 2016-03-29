int num = 25;
int[] x = new int[num];
int[] y = new int[num];
void setup(){
  size(100,100);
  noStroke();
  fill(255, 102); }
void draw(){
  background(0);
  for(int i = num-1; i > 0; i--){
    x[i] = x[i-1];
    y[i] = y[i-1]; //read from btm of list
  }
    x[0] = mouseX;
    y[0] = mouseY;//add value @ top of list
  
    for(int i = 0; i<num; i++){
      ellipse(x[i],y[i],i/2,i/2);
    }
}