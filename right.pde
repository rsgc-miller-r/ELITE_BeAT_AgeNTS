float eexx = 400;
int rightimer = 0;
float why3 = 0;
class right {
  void run() {
    float why3speed = 10;
    why3 = why3 + why3speed;
    image(rgt, eexx, why3);
    if (eexx>-101) {
      eexx += 1;
    }
    if (eexx == 200) {
      eexx = -102;
    }
    if (rightimer>0) {
      rightimer -= 1;
    }
    if (frek.getBand(10)*4 > 10 && frek.getBand(10)*4 < 20 && rightimer == 0) {
      if (timer == 0) {
        timer = 100;
        if (eexx == -102) {

          eexx = -90;
        }
      }
    }
  }
}
