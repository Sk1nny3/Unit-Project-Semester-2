import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;


Box2DProcessing box2d;

ArrayList<Boundary> boundaries;
ArrayList<Box> boxes;


float px;
int m;
Sentry S1;
Player Player;
Charger Steve;
float playerX;
float playerY;


void setup()
{

 smooth();
 fullScreen();
 Player = new Player();
 Steve= new Charger();
 //Init box2d
 box2d = new Box2DProcessing(this);
 //create the world and gravity
 box2d.createWorld();
 box2d.setGravity(0, -20);

 boxes = new ArrayList<Box>();

 // the boundaries
 boundaries = new ArrayList<Boundary>();
 boundaries.add(new Boundary(0,height-5,width*2,10));
 boundaries.add(new Boundary(width-5,0,10,height*2));
 boundaries.add(new Boundary(5,0,10,height*2));
 boundaries.add(new Boundary(width/6,height/1.5,width/4,10));
 boundaries.add(new Boundary(width-width/6,height/1.5,width/4,10));
}

void draw()
{
  background(255);
  box2d.step();
  Player.Draw();
  Steve.Draw();
  Player.Update();
  Steve.Update();
  fill(0);
  text(millis(),25,25);
  m = millis();
   
  for (Boundary wall: boundaries) 
  {
    wall.display();
  }
  
  playerX = Player.getX();
  playerY = Player.getY();
}

void keyPressed()
{
  Player.Pressed();
}

void keyReleased()
{
  Player.Released();
}