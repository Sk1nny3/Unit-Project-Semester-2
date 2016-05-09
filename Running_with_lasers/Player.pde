class Player extends Object
{

  boolean right;
  boolean left;


  Player()
  {
    super();
  }


  void Draw()
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

  void Pressed()
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

  void Released()
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