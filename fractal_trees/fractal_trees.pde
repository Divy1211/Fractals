void setup() {
  size(700, 700);
  background(0);
  stroke(255);
}
float a = PI/4;
void draw() {
  background(0);
  translate(width/2, height);
  branch(200);
  a = map(mouseX,0,width,0,TAU);
}

void branch(float l) {
  line(0, 0, 0, -l);
  translate(0, -l);
  if (l>1) {
    pushMatrix();
    rotate(a);
    branch(l*0.67);
    popMatrix();
    pushMatrix();
    rotate(-a);
    branch(l*0.67);
    popMatrix();
  }
}
