//Game by Rob 'Gorrila Ribs' Miller
//It be Denk
int timer = 20;
class Beat_Elite_Agents {

  void run() {

    frameRate(60);
    if (timer>0) {
      timer -=1;
    }
    
    background(255);
    //create simple visualizer for background (for now)
    stroke(random(255), random(255), random(255));
    frek.forward(sang.mix);
    sang.play();
    //draw waveform
    for (int f = 0; f < frek.specSize (); f++) { //start for loop
      line(f, height, f, height - frek.getBand(f)*4);
    }
    for (int q = 0; q < sang.left.size () - 1; q++) { //'nother loop
      //make line depending on frequency of left channel of song
      line(q, 50+sang.left.get(q)*50, q+1, 50+ sang.left.get(q+1)*50);
      //right channel
      line(q, 50+sang.right.get(q)*50, q+1, 50+ sang.right.get(q+1)*50);
    }
    //println(frek.getBand(10)*4); //this, and the next three 'if' statements create the 
    //arrows based on frequency
    //they're classes now!
    u.run();
    
    d.run();
    
    l.run();
    
    r.run();
println(timer);    
  }
}
