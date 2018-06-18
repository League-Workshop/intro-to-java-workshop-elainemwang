void setup() {
    size(500, 500);
    background(#FFFFFF);
    noStroke();
    //tomato
    fill(#F54C43);
    ellipse(150, 200, 150, 150);
    ellipse(212, 200, 150, 150);
    //stem
    fill(#77BC63);
    rect(176, 103, 12, 32);
}
void draw() {
    if(mousePressed == true){
      fill(#FFFFFF);
      ellipse(mouseX,mouseY,25,25);
    }
}