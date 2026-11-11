function rst()
{
   if(_root.v_glv3 == 99 || _root.v_pose && _parent.sd == "L")
   {
      gotoAndStop("off");
   }
   else
   {
      gotoAndStop("c22");
   }
}
function rls()
{
   if(rf)
   {
      _root.fce.chgEbs(null,15);
   }
   _root.handCur.fxCurRls(myHand);
   _root.prsFunc(this,1);
}
rst();
this.onPress = function()
{
   _root.prsFunc(this);
   _root.fce.chgEbx("R","Rup","fr",-1,0,null,null);
   var _loc3_ = !_root.v_pose ? "R" : "L";
   _root.handCur.fxCurPrs(myHand,_loc3_);
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
   _root.guide.gdOn("remove");
};
this.onMouseMove = function()
{
   var _loc2_;
   if(mon)
   {
      if(_xmouse > px + 25 || _xmouse < px - 25 || _ymouse > py + 25)
      {
         _root.fce.fceOn("cmOff2","R",null,null,1);
         mon = rf = null;
         _root.v_glv3 = 99;
         _loc2_ = !_root.v_pose ? null : "bk";
         _root.fukusOff0.fukusOff.offStart("glv3off",_loc2_);
         _root.handCur.fxCurRls(myHand);
         rst();
      }
   }
};
