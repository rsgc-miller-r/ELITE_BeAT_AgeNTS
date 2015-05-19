float eexx = 225;
int rightimer = 0;
float why3 = 0;
class right {
  void run() {
    float why3speed = 10;
   
    if (rightimer>0) {
      rightimer -= 1;
    }
    if (frek.getBand(10)*4 > 10 && frek.getBand(10)*4 < 20 && rightimer == 0) {
       why3 = why3 + why3speed;
 if(why3 > 600) {
    why3 = 0;
    }
       image(rgt, eexx, why3);
      if (timer == 0) {
        timer = 100;    
      }
    }
  }
}
