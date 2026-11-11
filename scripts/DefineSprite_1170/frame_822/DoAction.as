if(insAct == 2)
{
   mvSpd = 1;
   gotoAndStop("launch2");
   play();
}
else if(insAct == 99)
{
   mvSpd = 1;
   disNow(0,3);
}
else if(mvSpd >= 3)
{
   play();
}
else if(mvSpd <= 1)
{
   gotoAndStop("move1");
   play();
}
else
{
   gotoAndStop("move2loop");
   play();
}
