class Player extends Object
{

  boolean right;
  boolean left;
  boolean isAlive;

  Player()
  {
    super();
    super.setpic("player.png",80, 80);
    x=width/2;
    y=height-90;
    isAlive = true;
  }
  
  void Update()
{
  move();
  if (dist(Steve.x,x,Steve.y,y)<80)
  {
    isAlive=false;
  }
}

  void Draw()
  {
    if (isAlive==true)
    {
    image(pic,x,y);
    }
  }

  void move()
  {
    if (left==true)
    {
      x=x-12;
    }
    if (right==true)
    {
      x=x+12;
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