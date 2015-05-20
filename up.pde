float eeexxx = 300; //<>//
int uptimer = 0;
float why4 = 0;
class up {
  void run() {

    image(up, eeexxx, why4);
    float why4speed = 5;
    why4 = why4 + why4speed;

if (keyPressed) {
      if (keyCode == UP) {
        if (why4 > height - arrow) {
          skor = skor + 1;
          why4 = -100;
        }
      }
    }

    if (uptimer>0) {
      uptimer -= 1;
    }
    if (frek.getBand(10)*4 > 30 && frek.getBand(10)*4 < 40 && uptimer == 0) {
      uptimer = 60;
      if (why4 > 600) {
        why4 = 0;
      }
      if (timer == 0) {
        timer = 100;
      }
    }
  }
}
