function rst()
{
   gotoAndStop(_root.v_face);
}
function rls()
{
   _root.fce.chgEbs(null,15);
   _root.handCur.fxCurRls(hairBkBk2.hairBkBk3.myHand);
   _root.prsFunc(this,1);
}
rst();
this.onPress = function()
{
   _root.prsFunc(this);
   _root.fce.chgEbs("dnx");
   _root.handCur.fxCurPrs(hairBkBk2.hairBkBk3.myHand,_root.v_face);
};
this.onRelease = function()
{
   rls();
};
this.onReleaseOutside = function()
{
   rls();
};
this.onRollOver = function()
{
   _root.guide.gdOn("LR");
};
this.onMouseMove = function()
{
   if(mon)
   {
      if(_root.dstx(this,30))
      {
         hairBkBk2.swg("R");
         rls();
      }
      else if(_root.dstx(this,-30))
      {
         hairBkBk2.swg("L");
         rls();
      }
   }
};
