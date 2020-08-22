int x;
int y;
int runs;
int run;
int dots;
float score;
float before;
float after;
boolean startup;
boolean processing;

void setup()
{
  fullScreen(P2D);
  //size(200, 200);
  background(0);
  fill(255);
  smooth(8);
  startup();
  runs = 3;
  dots = runs * height;
}

void draw()
{
  if (!startup && !processing)
  {
    finished();
  } //<>//
  
  if (processing)
  {
    process();
  }
}

void mousePressed()
{
  if (!processing)
  {
    if (startup) 
    {
      startup = false;
      process();
    }
    else
    {
      process();
    }
  }
}

void keyPressed()
{
  if (!processing)
  {
    if (startup) 
    {
      startup = false;
      process();
    }
    else
    {
      process();
    }
  }
}
