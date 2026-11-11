function ableBtn()
{
   var _loc3_;
   if(_root.v_insert || _root.v_pz || _root.v_hide)
   {
      _loc3_ = _root.clkLk.clStat != 2 ? 50 : 0;
      _root.disBtns(this,0,_loc3_);
   }
   else
   {
      _loc3_ = _root.clkLk.clStat != 2 ? 100 : 0;
      _root.disBtns(this,1,_loc3_);
   }
}
function rls()
{
   mon = 0;
   _root.handCur.fxCurRls(hangSwitch01.myHandR);
}
function hgSwitch()
{
   _root.clkLk.clOff();
   var _loc2_;
   if(!_root.v_pose)
   {
      _loc2_ = _root.v_hang ? "stStart" : "hgStart";
   }
   else
   {
      _loc2_ = _root.v_hang ? "stStartBk" : "hgStartBk";
   }
   _root.main.gotoAndPlay(_loc2_);
   _root.handCur.fxCurRls(hangSwitch01.myHandR);
}
gotoAndStop("def");
this.onPress = function()
{
   _root.prsFunc(this);
   _root.handCur.fxCurPrs(hangSwitch01.myHandR,"R");
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
   _root.guide.gdOn("switch");
};
this.onMouseMove = function()
{
   if(mon && _root.dsty(this,10))
   {
      play();
   }
};
