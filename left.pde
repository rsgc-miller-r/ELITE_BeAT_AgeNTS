float ex = 150;
int leftimer = 0;
float why2 = 0;
class left {
  void run() { 
   float why2speed = 10;
  
    if (leftimer>0) {
      leftimer -= 1;
    }
    if (frek.getBand(10)*4 > 20 && frek.getBand(10)*4 < 30 && leftimer == 0) {
        why2 = why2 + why2speed;
     if(why2 > 600) {
    why2 = 0;
    }
       image(lft, ex, why2);
      if (timer == 0) {
        timer = 100;
      }
    }
  }
}
