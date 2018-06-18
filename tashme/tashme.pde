PImage mustache;
PImage friend;
PImage hat;
void setup(){
  friend = loadImage("friend.png");
  size(800,800);
  friend.resize(width,height);
  
  mustache = loadImage("mustache.png");
  hat = loadImage("hat.png");
  
}
void draw(){
  background(friend);
  if(mousePressed == true && mouseButton == LEFT){
    image(mustache,mouseX-150,mouseY-70);
    mustache.resize(300,200);
  }
  if(mouseButton == RIGHT){
    image(hat,150,-100);
  }
  
}