PImage catPic;
int eX = 441;
int eY = 355;
int acceleration = 5;

void setup(){
  size (800,800);
  catPic = loadImage("cat.jpg");
  catPic.resize(800,800);
  background(catPic);
}


void draw(){
  if(mousePressed){
  keyPressed();
  println("Mouse’s x-position: " + mouseX + "\n" + "Mouse’s y-position: " + mouseY + "\n");}
  fill(#FF0000);
  noStroke();
  ellipse(eX,eY,50,50);
  ellipse(eX+125, eY+10, 60, 50);
  if(eY>height){
    catPic.resize(800,800);
    background(catPic);
    eX = 441;
    eY = 355;
    acceleration = 5;
  }
  
}

void keyPressed(){
  eX-=2*acceleration;
  eY+=2*acceleration;
}