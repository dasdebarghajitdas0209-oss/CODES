function rst()
{
   gotoAndStop(_root.v_face);
}
function osgDirRst(obj)
{
   if(_root.v_face == "fr")
   {
      obj.gotoAndStop(v_osgPos);
   }
   else if(_root.v_face == v_osgPos)
   {
      obj.gotoAndStop("in");
   }
   else
   {
      obj.gotoAndStop("out");
   }
}
function rls()
{
   _root.fce.chgEbs(null,15);
   _root.handCur.fxCurRls(hairBkBk2.hairBkBk3.myHand);
   _root.prsFunc(this,1);
}
v_osgPos = "L";
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
         v_osgPos = "L";
         this.osgDirRst(hairBkBk2.hairBkBk3);
      }
      else if(_root.dstx(this,-30))
      {
         v_osgPos = "R";
         this.osgDirRst(hairBkBk2.hairBkBk3);
      }
   }
};
