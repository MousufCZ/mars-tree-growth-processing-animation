class Tree
{
  //PVector position;                        // Positon of Astro
  //PVector velocity;                        // Astro Movement
  PImage[] tree = new PImage[29];            // UPLOAD tree
  int frame;                                  // Added frame for 
  int growX, growY;                          // Variables of tree positions

  Tree() {
    for (int i = 0; i < 29; i=i+1) {
      tree[i] = loadImage("Tree" + (i + 1) + ".png");
    }
    growX= width/2;
    growY= height/2;
  }

  void draw() {                              // Draw Astro on to sketch
    image(tree[frame], growX, height-tree[frame].height);
  }

  void grow()                               // Growth animation for tree
  {
    if (frame < 28) {                       // get to 29th images
      frame = frame + 1;
    }
  }
}
