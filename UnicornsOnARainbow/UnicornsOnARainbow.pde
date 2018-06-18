PImage rainbow;
PImage unicorn;
void setup(){
  rainbow = loadImage("rainbow.jpg");
  size(800,600);
  rainbow.resize(width,height);
  background(rainbow);
  
  unicorn = loadImage("unicorn.png");
}
void draw(){
  rainbow = loadImage("rainbow.jpg");
  size(800,600);
  rainbow.resize(width,height);
  background(rainbow);
  image(unicorn,mouseX-100,mouseY-100);
  unicorn.resize(200,200);
}