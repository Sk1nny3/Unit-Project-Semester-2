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

  Player.update();
  background(0);
  text(millis(),25,25);
  m = millis();

}