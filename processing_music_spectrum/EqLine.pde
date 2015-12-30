class EqLine {
  int index = 0;
  float width = 20;
  float pad = 1;
  float height = 10;
  
  public EqLine(int index) {
    this.index = index;
  }
  
  void draw(float value) {
    float x = -index * width;
    int qIndex = 0;
    pushMatrix();
      translate(width, bottom);
      rotate(radians(-180));
      for (float y = 0; y <= value; y+=height+pad) {
        pushStyle();
          println(value);
          fill(lerpColor(#FF0000, #00FF00, map(value, 0, 255, 0, 1)), 70);
          rect(x, y, width, 10);
        popStyle();
        qIndex++;
      }
    popMatrix();
  }
}