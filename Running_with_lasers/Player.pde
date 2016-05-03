class Player extends Object
{
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
      super.x=super.x+2;
    }
    if (right=true);
    {
      super.x=super.x-2;
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