int s = 100;

void setup(){
  size(800,800);
}

void draw(){
  if(mousePressed==true){
    s+=1;
    fill(#A7070C);
    ellipse(400,400,s,s);
  }
  else{
    fill(#3800F7);
    ellipse(400,400,s,s);
  }
}