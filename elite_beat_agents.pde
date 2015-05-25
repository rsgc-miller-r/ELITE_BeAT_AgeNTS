//prog by Rob 'Gorrila Ribs' Miller
//its dunk

//libraries are = minim (all of it)

//load a bunch o' libraries
import procontroll.*;
import net.java.games.input.*;
import ddf.minim.effects.*;
import ddf.minim.analysis.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.*;
import ddf.minim.ugens.*;
int arrow = 120;

//create class
Beat_Elite_Agents b;
left l;
right r;
up u;
down d;
//create Minim object, with the help of audioplayer
Minim sund;
AudioPlayer sang;
AudioMetaData meta;
FFT frek;
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
  l = new left();
  d = new down();
  u = new up();
  r = new right();
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
  sang = sund.loadFile("crythunder.mp3", 512);
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
