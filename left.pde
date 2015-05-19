float ex = 150;
int leftimer = 0;
float why2 = 0;
class left {
  void run() { 

    image(lft, ex, why2);
    float why2speed = 5;
    why2 = why2 + why2speed;

    if (leftimer>0) {
      leftimer -= 1;
    }
    if (frek.getBand(10)*4 > 20 && frek.getBand(10)*4 < 30 && leftimer == 0) {
      leftimer = 60;
      if (why2 > 600) {
        why2 = 0;
      }
      if (timer == 0) {
        timer = 100;
      }
    }
  }
}
