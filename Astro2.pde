class Astro2
{
  //PVector position;                       // Positon of Astro
  //PVector velocity;                       // Astro Movement
  PImage astro2;                          // UPLOAD astro
  float xPos;
  float yPos;


  void draw() {                       // Draw Astro on to sketch
    astro2 = loadImage("Astro2.png");
    image(astro2, xPos, yPos);
  }
  void move()                              // Add movement to astro
  {
    float smoothness = 0.0009;               
    xPos = noise(frameCount*smoothness, 0)*width;
    yPos = noise(frameCount*smoothness, 1)*height;
  }
}
