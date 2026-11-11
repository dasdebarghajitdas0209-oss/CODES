function rst()
{
   if(_root.v_katana != 99)
   {
      gotoAndStop("on");
   }
   else
   {
      gotoAndStop("off");
   }
}
function prs()
{
   _root.prsFunc(this);
   _root.fce.chgEbs("Ldn");
   _root.handCur.fxCurPrs(myHand,"L");
}
function rls()
{
   mon = 0;
   if(rf)
   {
      _root.fce.chgEbs(null,15);
   }
   _root.handCur.fxCurRls(myHand);
}
function rOver()
{
   _root.guide.gdOn("remove");
}
function katanaOff()
{
   _root.v_katana = 99;
   rf = 0;
   rst();
   rls();
   _root.fukusOff0.fukusOff.offStart("katanaOff");
}
rst();
this.onMouseMove = function()
{
   if(mon)
   {
      if(_xmouse > px + 30 || _ymouse > py + 30)
      {
         _root.fce.fceOn("cmOff2","R");
         katanaOff();
      }
   }
};
