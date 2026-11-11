_root.main.chgBnyEar(null,2);
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
else if(mvSpd >= 4)
{
   play();
}
else if(mvSpd <= 2)
{
   gotoAndStop("move2");
   play();
}
else
{
   gotoAndStop("move3loop");
   play();
}
