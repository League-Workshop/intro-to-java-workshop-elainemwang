void setup(){
  size(800,800);
  fill(#BCAA02);
  ellipse(400,400,400,400);
  fill(#E30E11);
  ellipse(400,400,375,375);
  fill(#F2E495);
  ellipse(400,400,350,350);
}
void draw(){
  PImage kitten = loadImage("kitten.gif");
  PImage canadianbacon = loadImage("canadianbacon.gif");
  
  if (mousePressed && mouseButton == LEFT){
    image(kitten, mouseX-20, mouseY-20);
  }
  if(mousePressed && mouseButton == RIGHT){
    image(canadianbacon, mouseX-20, mouseY-20);
  }
}