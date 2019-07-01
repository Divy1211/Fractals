ArrayList<Branch> tree = new ArrayList<Branch>();
float a = PI/6, c = 0;
void setup() {
  size(700, 700);
  background(0);
  stroke(255);
  PVector s = new PVector(width/2, height);
  PVector e = new PVector(width/2, height-200);
  tree.add(new Branch(s, e));
}
void draw() {
  a = map(mouseX,0,width,0,TAU);
  c = 0;
  background(0);
  for (Branch b : tree) {
    b.show();
    c++;
    if (c > pow(2, 7)-1) {
      b.leaf();
      if (((int)random(0, 100) == 0))
        b.showleaf = true;
      if (mousePressed && tree.size() >= pow(2, 13)-1) {
        if (((int)random(0, 5)) == 0)
          b.showleaf = false;
      }
    }
  }
}

void mousePressed() {
  if (tree.size() < pow(2, 13)-1) {
    for (int i = tree.size()-1; i>=0; i--) {
      if (!tree.get(i).finish) {
        tree.add(tree.get(i).r());
        tree.add(tree.get(i).l());
      }
    }
  }
}
