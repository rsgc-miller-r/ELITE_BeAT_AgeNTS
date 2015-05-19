float eeexxx = 500;
int uptimer = 0;
float why4 = 0;
class up {
  void run() {
   float why4speed = 10;
    why4 = why4 + why4speed;
    image(up, eeexxx, why4);
    if (eeexxx>-101) {
      eeexxx += 1;
    }
    if (eeexxx == 200) {
      eeexxx = -102;
    }
    if (uptimer>0) {
      uptimer -= 1;
    }
    if (frek.getBand(10)*4 > 30 && frek.getBand(10)*4 < 40 && uptimer == 0) {
      if (timer == 0) {
        timer = 100;
        if (eeexxx == -102) {
          eeexxx = -90;
        }
      }
    }
  }
}
