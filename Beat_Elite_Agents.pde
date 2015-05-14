//Game by Rob 'Gorrila Ribs' Miller
//It be Denk

class Beat_Elite_Agents {
  
  void run() {
    
    println("R U BEAT ENUF?"); 
    background(0);
    stroke(random(255), random(255), random(255));
    frek.forward(sang.mix);
    sang.play();
    //draw waveform
    for(int f = 0; f < frek.specSize(); f++) { //start for loop
     line(f, height, f, height - frek.getBand(f)*4);
  }
    for(int f = 0; f < sang.left.size() - 1; f++) {
    //make line depending on frequency of left channel of song
    line(f,50+sang.left.get(f)*50,f+1, 50+ sang.left.get(f+1)*50);
    //right channel
    line(f,50+sang.right.get(f)*50,f+1, 50+ sang.right.get(f+1)*50);
  }

  }
  
  
}
