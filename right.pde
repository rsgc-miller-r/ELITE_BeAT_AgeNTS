float eexx = 225;
int rightimer = 0;
float why3 = 0;
class right {
  void run() {

    image(rgt, eexx, why3);
    float why3speed = 5;
    why3 = why3 + why3speed;

if (keyPressed) {
      if (keyCode == RIGHT) {
        if (why3 > height - arrow) {
          skor = skor + 1;
          why3 = -100;
        }
      }
    }

    if (rightimer>0) {
      rightimer -= 1;
    }
    if (frek.getBand(10)*4 > 10 && frek.getBand(10)*4 < 20 && rightimer == 0) {
      rightimer = 60;
      if (why3 > 600) {
        why3 = 0;
      }
      if (timer == 0) {
        timer = 100;
      }
    }
  }
}
