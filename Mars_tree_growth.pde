import processing.sound.*;
SoundFile music;

Tree tree;
Astro astro;
Astro2 astro2;

PImage bg;                          // Delare Background image
float counter;                      // Frame counter being drawn

void setup() {
  size(997, 576);
  bg = loadImage("Background.png");
  astro=new Astro();
  astro2=new Astro2();
  tree=new Tree();
  counter= 0;
  music = new SoundFile(this, "mars_sound.wav");
}
void keyPressed()
{
  if (key == ' ')
  {
    music.play();
  }
}
void myName()
{
  pushStyle();
  fill(4, 251, 74);
  textSize(18);
  textAlign(RIGHT, BOTTOM);
  text("Green on Mars, by Mousuf ZC", width, height);
  popStyle();
}
void draw() 
{
  image(bg, 0, 0);
  myName();
  astro.draw();
  astro.move();
  astro2.draw();
  astro2.move();
  tree.draw();
  counter= counter + 1;
  if (counter % 60 == 0) {              // ""MODULE OPERATION"" - the reminder of division
    tree.grow();
  }
}
