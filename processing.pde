void process()
{
  /*
  background(0);
  processing = true;
  before = millis();
  for (int i = 0; i <= runs; i++)
  {
    for (int j = 0; j <= height; j++)
    {
      for (int k = 0; k <= width; k++)
      {
        //fill(random(0, 255), random(0, 255), random(0, 255));
        circle(float(x), float(y), random(1.4, 3));
      }
      y++;
      x = int(random(0, width));
    }
    x = 0;
    y = 0;
  }
  after = millis();
  processing = false;
  */
  
  if (run == 0)
  {
    background(0);
    before = millis();
    processing = true;
  }
  
  for (int k = 0; k <= width; k++)
  {
    //fill(random(0, 255), random(0, 255), random(0, 255));
    circle(float(x), float(y), random(1.4, 3));
  }
  y++;
  if (y == height) y = 0;
  x = int(random(0, width));
  
  if (run == dots) 
  {
    after = millis();
    processing = false;
    x = 0;
    y = 0;
    run = -1;
  }
  run++;
}
