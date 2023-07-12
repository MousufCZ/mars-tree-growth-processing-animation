class Astro
{
  //PVector position;                       // Positon of Astro
  //PVector velocity;                       // Astro Movement
  PImage astro1;                            // UPLOAD astro 
  float xPos;
  float yPos;


  void draw() {                             // Draw Astro on to sketch
    astro1 = loadImage("Astro1.png");
    image(astro1, xPos, yPos);
    
  }
  void move()                               // Add movement to astro
  {
    float smoothness = 0.00009;               
    xPos = noise(frameCount*smoothness, 0)*width;
    yPos = noise(frameCount*smoothness, 1)*height;
  }
}
