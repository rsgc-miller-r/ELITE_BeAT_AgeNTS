Beat_Elite_Agents b;
PImage img;
boolean run = false;
void setup() {
  b = new Beat_Elite_Agents();
  size(400, 600);
  img = loadImage("beat.png");
}

void draw() {
  if (run==false) {
    image(img, 0, 0);
  } else {
    b.run();
  }
  if (mousePressed) {
    run = true;
  }
}
