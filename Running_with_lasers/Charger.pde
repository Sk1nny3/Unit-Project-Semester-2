class Charger extends Object
{
  int i;
  boolean playerLeft;
  Charger()
  {
    super();
    super.setpic("Charger.png", 100, 100);
    i= (int)random(1, 3);
    if (i==1)
    {
      x=width-100;
      y=height-106;
    }
    if (i==2)
    {
      x=100;
      y=height-106;
    }
    if (Player.x<x)
    {
      playerLeft=true;
    } 
    if (Player.x>x)
    {
      playerLeft=false;
    }
  }

  void Update()
  {
    Dir();
  }

  void Dir()
  {
    if (playerLeft==true)
    {
      x=x-6;
    } 
    if (playerLeft==false)
    {
      x=x+6;
    }
  }

  void Draw()
  {
    image(pic, x, y);
  }
}