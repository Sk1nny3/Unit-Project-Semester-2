float px;
int m;
Sentry S1;
Player Player;

void setup()
{
  fullScreen();
  Player = new Player();
}

void draw()
{

  background(0);
  Player.update();
  text(millis(), 25, 25);
  m = millis();
  Player.Draw();
}

void keyPressed()
{
  Player.Pressed();
}

void keyReleased()
{
  Player.Released();
}