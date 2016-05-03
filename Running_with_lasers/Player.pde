class Player
{
  float x;
  float y;
  float w;
  float h;
  float spd;
  float dir;
  PImage pic;
  boolean right;
  boolean left;

  Player()
  {
    super();
  }

  void draw()
  {
    loadImage("player.png");
  }

  void move()
  {
    if (left=true);
    {
      x=x+2;
    }
    if (right=true);
    {
      x=x-2;
    }
  }

  void keyPressed()
  {
    if (key=='d')
    {
      right=true;
    }
    if (key=='a')
    {
      left=true;
    }
  }

  void keyReleased()
  {
    if (key=='d')
    {
      right=false;
    }
    if (key=='a')
    {
      left=false;
    }
  }
}