float eeexxx = 300;
int uptimer = 0;
float why4 = 0;
class up {
  void run() {
   float why4speed = 10;
    why4 = why4 + why4speed;
  //  image(up, eeexxx, why4);
    if(why4 > 600) {
    why4 = 0;
    }
    if (uptimer>0) {
      uptimer -= 1;
    }
    if (frek.getBand(10)*4 > 30 && frek.getBand(10)*4 < 40 && uptimer == 0) {
      image(up, eeexxx, why4);
      if (timer == 0) {
        timer = 100;        
      }
    }
  }
}
