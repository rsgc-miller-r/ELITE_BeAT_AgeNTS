float exx = 75;
int downtimer = 0;
float why1 = 0;
class down {
  void run() { 

    image(dwn, exx, why1);
    float why1speed = 5;
    why1 = why1 + why1speed;

    if (keyPressed) {
      if (keyCode == DOWN) {
        if (why1 > height - arrow) {
          skor = skor + 1;
          why1 = -100;
        }
      }
    }

    if (downtimer>0) {
      downtimer -= 1;
    }

    if (frek.getBand(10)*4 > 0 && frek.getBand(10)*4 < 10 && downtimer == 0) {
      downtimer = 40;
      if (why1 > 600) {
        why1 = 0;
      }
      if (timer == 0) {
        timer = 100;
      }
    }
  }
}
