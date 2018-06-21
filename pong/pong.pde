int ballX = 400;
int ballY = 0;
int xSpeed = 3;
int ySpeed = 3;
boolean hitLeft = false;
boolean hitRight = false;

void setup(){
  size(800,800);
}

void draw(){
  background(#030000);
  ellipse(ballX,ballY,50,50);
  fill(#FDFFE5);
  stroke(#FDFFE5);
  rect(mouseX-100, 750, 200, 25);
  
  ballY += ySpeed;
  
  if(hitLeft){
    ballX += xSpeed;
  }
  if(hitRight){
    ballX -= xSpeed;
  }
  
  if(ballX >= width){
    xSpeed = -xSpeed;
  }
  if(ballX <= 0){
    xSpeed = -xSpeed;
  }
  
  if(ballY > height){
    ySpeed = -ySpeed;
  }
  if(ballY < 0){
    ySpeed = 3;
  }
  
  
  if(intersects(ballX,ballY,mouseX-100,725,200)){
    if(leftRight(ballX, mouseX-100, 200).equals("left")){
      hitLeft = true;
      hitRight = false;
      ySpeed = -ySpeed;
    }
    if(leftRight(ballX, mouseX-100, 200).equals("right")){
      hitLeft = false;
      hitRight = true;
      ySpeed = -ySpeed;
    }
    
  }
}

boolean intersects(int ballX, int ballY, int paddleX, int paddleY,
int paddleLength) {
    if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
        return true;
    else
        return false;
}
String leftRight(int ballX, int paddleX, int paddleLength){
  if(ballX>paddleX+paddleLength/2){
    return "left";
  }
  else{
    return "right";
  }
}