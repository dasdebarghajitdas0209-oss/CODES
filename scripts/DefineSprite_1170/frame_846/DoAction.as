if(insAct == 1)
{
   gotoAndStop("return");
   play();
}
else if(insAct == 2)
{
   mvSpd = 1;
   gotoAndStop("launch1");
   play();
}
else if(insAct == 3)
{
   mvSpd = 1;
   gotoAndStop("outSperm");
   play();
}
else if(insAct == 99)
{
   mvSpd = 1;
   disNow(0,3);
}
else if(insAct == 100)
{
   mvSpd = 1;
   disNow(0,4);
}
else if(mvSpd >= 4)
{
   gotoAndStop("move4loop");
   play();
}
else
{
   gotoAndStop("move3");
   play();
}
_root.main.fr.bust0.bust1.yure0("ydd3",1);
_root.main.fr.cos0.yureFb("ydd1",1);
_root.main.chgBnyEar(null,2);
