//prog by Rob 'Gorrila Ribs' Miller
//its dunk

//load a bunch o' libraries
import ddf.minim.effects.*;
import ddf.minim.analysis.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.*;
import ddf.minim.ugens.*;
int timer = 0;

//create class
Beat_Elite_Agents b;
//create Minim object
Minim sund;
AudioPlayer sang;
AudioMetaData meta;
FFT frek;
float ex = 0; //horizontal position of arrow
float why = 0; //vertical position of arrow
float whyspeed = 50;
float skor = 0;
float die = 0;
//load title screen
PImage img;

boolean run = false;
void setup() {
  b = new Beat_Elite_Agents();
  size(400, 600);
  img = loadImage("beat.png");
  //ready object
  sund = new Minim(this);
  //loads song from data folder, sets buffer length
  sang = sund.loadFile("edgy.mp3", 512);
  //load mp3 metadata
  meta = sang.getMetaData();
  //load frequency
  frek = new FFT(sang.bufferSize(), sang.sampleRate());
}

void draw() {
  if (run==false) {
    image(img, 0, 0);
  } else {
    b.run();
  }
  if (mousePressed) {
    run = true;
  }
}
