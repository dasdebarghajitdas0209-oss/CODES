_root.v_nf = 1;
if(insAct == 1)
{
   gotoAndStop("return");
   play();
}
else if(insAct == 2)
{
   gotoAndStop("launch1");
   play();
}
else if(insAct == 3)
{
   gotoAndStop("outSperm");
   play();
}
m1sf = _currentframe;
if(moveCount == 0)
{
   eval(LegOp).nkds.ctrlNkds("restart");
}
