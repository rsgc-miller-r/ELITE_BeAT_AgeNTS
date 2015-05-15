//Game by Rob 'Gorrila Ribs' Miller
//It be Denk

class Beat_Elite_Agents {
  
  void run() {

    
    if(timer > 0) {
     timer-=1; 
    }
    
    println("R U BEAT ENUF?"); 
    background(0);
    stroke(random(255), random(255), random(255));
    frek.forward(sang.mix);
    sang.play();
    //draw waveform
    for(int f = 0; f < frek.specSize(); f++) { //start for loop
     line(f, height, f, height - frek.getBand(f)*4);
  }
    for(int q = 0; q < sang.left.size() - 1; q++) { //'nother loop
    //make line depending on frequency of left channel of song
    line(q,50+sang.left.get(q)*50,q+1, 50+ sang.left.get(q+1)*50);
    //right channel
    line(q,50+sang.right.get(q)*50,q+1, 50+ sang.right.get(q+1)*50);
  }
    println(frek.getBand(10)*4);
    if(frek.getBand(10)*4 > 10 && frek.getBand(10)*4 < 20 && timer == 0) {
      fill(0,0,255);
      ellipse(200,300,50,50);
      timer = 30;
    }
        if(frek.getBand(10)*4 > 50 && frek.getBand(10)*4 < 60 && timer == 0) {
      fill(0,255,0);
      ellipse(200,300,50,50);
      timer = 30;
    }
        if(frek.getBand(10)*4 > 30 && frek.getBand(10)*4 < 40 && timer == 0) {
      fill(255,0,0);
      ellipse(200,300,50,50);
      timer = 30;
    }
        //will (hopefully) move arrow down screen (
    //arrow is ellipse right now,refering to my target_practice code
    ex = random(0, width);
    why = 0 - die / 2;  
    whyspeed = random(50,70);
    why = why + whyspeed;
    
    ellipse(ex, why, die, die);
    if (why+ die/2 > height) {
      setup();
    }
  }
  
  
}
