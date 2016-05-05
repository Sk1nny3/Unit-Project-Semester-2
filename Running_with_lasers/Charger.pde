class Charger extends Object
{
  int i;
  Charger()
  {
    super();
    i= (int)random(1, 3);
    super.setpic("Charger.jpg");
  }

  void Update()
  {
    Dir();
  }

  void Dir()
  {
    if (Player.x<x)
    {
      x=x-6;
    }
    else
    {
      x=x+6;
    }
  }

  void Draw()
  {
    image(pic, x, y);
  }
}