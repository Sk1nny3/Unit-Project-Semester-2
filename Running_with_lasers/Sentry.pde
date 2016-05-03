class Sentry extends Object
{
  float TX;
  float TY;
  int time;
  PVector Target;
  PVector Base;
  int m;
  Sentry()
  {
    super();
    TX=0;
    TY=0;
    super.x=Base.x;
    super.y=Base.y;
    TX=Target.x;
    TY=Target.y;
    int m = millis();
  }
  void shoot()
  {
   if (m == 6000)
   {
     target();
     stroke(0,255,0);
     line(Target.x,Target.y,Base.x,Base.y);
     if (m == 8000)
     {
       stroke(255,0,0);
       line(Target.x,Target.y,Base.x,Base.y);
       if (m == 9000)
       {
         stroke(0,0,0,0);
         fill(0,0,0,0);
         line(Target.x,Target.y,Base.x,Base.y);
       }
     }
   }
  }
  
  void target()
  {
    getTX();
    getTY();
    TX=Target.x;
    TY=Target.y;
  }
  
  float getTX()
  {
   return TX;
  }
   
    float getTY()
  {
   return TY;
  }

  
}