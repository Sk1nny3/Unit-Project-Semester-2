class Object
{
  float x;
  float y;
  float w;
  float h;
  float spd;
  float dir;
  PImage pic;
  
  
  Object()
  {
    x=10;
    y=10;
    w=10;
    h=10;
    spd=2;
    dir=1;
    pic=loadImage("player.png");
  }
  
  void update()
  {
    
  }
  
  void setpos(float _x, float _y)
  {
    x=_x;
    y=_y;
  }
  
  void 
}