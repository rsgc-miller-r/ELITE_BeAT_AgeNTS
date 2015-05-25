//Game by Rob 'Gorrila Ribs' Miller
//It be Denk
int timer = 0;
class Beat_Elite_Agents {

  void run() {

    frameRate(60);
    if (timer>0) {
      timer -=1;
    }
    stroke(0);
    fill(0);
    background(0);
    text("Score: " + skor, width/2, height/2);
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
    line(0, height-arrow, width, height-arrow);
    line(0, height-arrow + 100, width, height-arrow + 100);
    println(frek.getBand(10)*4); //frequency
    //arrows based on frequency
    //they're classes now!
    timer = 10;
    u.run();
    
    d.run();
    
    l.run();
    
    r.run();
println(timer);    

  }
}
