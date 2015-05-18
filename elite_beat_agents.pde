//prog by Rob 'Gorrila Ribs' Miller
//its dunk

//load a bunch o' libraries
import ddf.minim.effects.*;
import ddf.minim.analysis.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.*;
import ddf.minim.ugens.*;
int timer = 0; //create timer for arrows, also delays next frequency check

//create class
Beat_Elite_Agents b;
//create Minim object, with the help of audioplayer
Minim sund;
AudioPlayer sang;
AudioMetaData meta;
FFT frek;
float ex = 0; //horizontal position of arrow
float why = 0; //vertical position of arrow
float whyspeed = 50; //yspeed
float skor = 0; //score variable, not used yet

//create title screen object
PImage img;
PImage dwn; //create arrow objects
PImage up;
PImage lft;
PImage rgt;

boolean run = false; //gotta have a bootlean
void setup() {

  b = new Beat_Elite_Agents();
  size(400, 600); //create canvas
  dwn = loadImage("dwn.png"); //load arrows
  up = loadImage("up.png");
  lft = loadImage("lft.png");
  rgt = loadImage("rgt.png"); 
  img = loadImage("beat.png"); //load title screen
  //ready object
  sund = new Minim(this);
  //loads song from data folder, sets buffer length
  sang = sund.loadFile("edgy.mp3", 512);
  //load mp3 metadata (even though I'm not using it right now)
  meta = sang.getMetaData();
  //load frequency
  frek = new FFT(sang.bufferSize(), sang.sampleRate());
}

void draw() {
  if (run==false) {
    image(img, 0, 0); //draw title scrren
  } else { //run Beat_Elite_Agents
    b.run();
  }
  if (mousePressed) {
    run = true;
  }
}
