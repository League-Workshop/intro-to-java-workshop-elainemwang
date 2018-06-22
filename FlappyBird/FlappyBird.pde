int x = 75;
int y = 100;
int pHeight = 200;
int pipeX = 700;
int pipeY = 0;
int birdYVelocity = 15;
int gravity = 4;
int gap = 200;
int score = 0;

void setup(){
  size(800,800);
}

void draw(){
  score+=increase();
  
  if (intersectsPipes()||y>=800){
    println("Game Over");
    exit();
  }
  teleportPipes();
  mousePressed();
  background(#0EC154);
  
  noStroke();
  //upper pipe
  fill(#F73614);
  rect(pipeX, 0, 100, pHeight);
  pipeX -= 4;
  //lower pipe
  fill(#F73614);
  rect(pipeX, pHeight+gap, 100, 800);
  pipeX -= 4;
  //bird
  fill(#FFE70D);
  stroke(#FFE70D);
  ellipse(x,y,50,50);
  y+=gravity;
  
  //text
  fill(#FFFFFF);
  text("Score: " + Integer.toString(score), 50,50);
}

void mousePressed(){
  if(mousePressed){
    y-=birdYVelocity;
  }
}

void teleportPipes(){
  if(pipeX <= -100){
    int upperPipeHeight = (int) random(0, 500);
    gap = (int) random(100,400);
    pipeX = 800;
    pHeight = upperPipeHeight;
  }
}

boolean intersectsPipes() { 
     if (y-25 <= pHeight && x+25 >= pipeX && x-25 <= (pipeX+100)){
          return true; }
     else if (y+25 >= pHeight+gap && x+25 >= pipeX && x-25 <= (pipeX+100)) {
          return true; }
     else { return false; }
}

int increase(){
  if (y>pHeight && y< pHeight+gap && x==pipeX+50){
          return 1; }
  else { return 0; }

}