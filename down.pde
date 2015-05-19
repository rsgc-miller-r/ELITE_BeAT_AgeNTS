float exx = 75;
int downtimer = 0;
float why1 = 0;
class down {
  void run() { 

    image(dwn, exx, why1);
    float why1speed = 5;
    why1 = why1 + why1speed;

    if (downtimer>0) {
      downtimer -= 1;
    }
    
    if (frek.getBand(10)*4 > 0 && frek.getBand(10)*4 < 10 && downtimer == 0) {
      downtimer = 60;
      if (why1 > 600) {
        why1 = 0;
      }
      if (timer == 0) {
        timer = 100;
      }
    }
  }
}
