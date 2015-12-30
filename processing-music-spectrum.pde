ArrayList<EqLine> lines;

float bottom;

void setup() {
  size(939, 500);
  colorMode(HSB, 100);
  lines = new ArrayList<EqLine>();
  bottom = height - 20;
  for (int i = 0; i < 50; i++) {
    lines.add(new EqLine(i));
  }
  background(0);
}

void draw() {
  pushStyle();
    filter(BLUR, 1);
    fill(0, 20);
    rect(0, 0, width, height);
  popStyle();
  for (EqLine line : lines) {
    line.draw(noise(line.index, radians(frameCount * 10)) * 300);
  }
  //filter(THRESHOLD);
}