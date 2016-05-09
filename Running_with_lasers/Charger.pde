class Charger extends Object
{
  int i;
  boolean playerLeft;
  Charger()
  {
    super();
    i= (int)random(1, 3);
    super.setpic("Charger.png");
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
      x=x+6;
    } 
    if (playerLeft==false)
    {
      x=x-6;
    }
  }

  void Draw()
  {
    image(pic, x, y);
  }
}