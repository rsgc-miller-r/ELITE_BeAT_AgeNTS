float ex = 300;
int leftimer = 0;
float why2 = 0;
class left {
  void run() { 
   float why2speed = 10;
    why2 = why2 + why2speed;
    image(lft, ex, why2);
    if (ex>-101) {
      ex += 1;
    }
    if (ex == 200) {
      ex = -102;
    }
    if (leftimer>0) {
      leftimer -= 1;
    }
    if (frek.getBand(10)*4 > 20 && frek.getBand(10)*4 < 30 && leftimer == 0) {
      if (timer == 0) {
        timer = 100;
        if (ex == -102) {

          ex = -90;
        }
      }
    }
  }
}
