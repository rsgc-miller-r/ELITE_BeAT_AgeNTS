float exx = 75;
int downtimer = 0;
float why1 = 0;
class down {
  void run() { 
    float why1speed = 10;
    why1 = why1 + why1speed;
   // image(dwn, exx, why1);
     if(why1 > 600) {
    why1 = 0;
    }
    
    if (downtimer>0) {
      downtimer -= 1;
    }
    if (frek.getBand(10)*4 > 0 && frek.getBand(10)*4 < 10 && downtimer == 0) {
         image(dwn, exx, why1);
      if (timer == 0) {
        timer = 100;
      }
    }
  }
}
