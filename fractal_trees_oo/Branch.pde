class Branch {
  PVector s, e;
  boolean finish = false, showleaf = false;
  Branch(PVector s, PVector e) {
    this.s = s;
    this.e = e;
  }
  void show() {
    stroke(255);
    line(s.x, s.y, e.x, e.y);
  }
  Branch r() {
    finish = true;
    PVector d = PVector.sub(e, s);
    d.rotate(a);
    d.mult(0.67);
    return new Branch(e, d.add(e));
  }
  Branch l() {
    finish = true;
    PVector d = PVector.sub(e, s);
    d.rotate(-a);
    d.mult(0.67);
    return new Branch(e, d.add(e));
  }
  void leaf() {
    if (showleaf) {
      noStroke();
      fill(255, 183, 197, 200);
      ellipse(e.x,e.y,8,8);
    }
  }
}
