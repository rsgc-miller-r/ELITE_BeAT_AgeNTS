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
      fill(random(255), random(255), random(255));
      ellipse(200,300,50,50);
      timer = 30;
    }
  }
  
  
}
