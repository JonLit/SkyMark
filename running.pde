void finished()
{
  //background(0);
  score = after - before;
  textAlign(CENTER, CENTER);
  textSize(30);
  text("Your Score: " + score + "Points\nClick to run again!", width/2, height/2);
}
