function rst()
{
   if(_root.jdgGlv2() == 2 && _parent.sd == "L")
   {
      gotoAndStop("off");
   }
   else if(_root["v_glv2" + _parent.sd] == 99)
   {
      gotoAndStop("off");
   }
   else
   {
      gotoAndStop("g" + _root.jdgGlv2());
   }
}
function rls()
{
   if(rf)
   {
      _root.fce.chgEbs(null,15);
   }
   _root.handCur.fxCurRls(myHand,Other.myHand);
   _root.prsFunc(this,1);
}
function glvOff()
{
   _root["v_glv2" + _parent.sd] = 99;
   _root.fukusOff0.fukusOff.offStart("glv2off" + _parent.sd,_parent.sd);
   rls();
   rst();
}
rst();
Other = _parent._parent["arm" + _parent.sdo].glv2;
this.onPress = function()
{
   _root.prsFunc(this);
   if(_parent.sd == "L")
   {
      _root.fce.chgEbx("Lup","up","Rup",-1,0,null,null);
   }
   else
   {
      _root.fce.chgEbx("Rup","Rup","up",-1,0,null,null);
   }
   if(_root.v_pose)
   {
      _root.handCur.fxCurPrs(myHand,_parent.sdo,Other.myHand);
   }
   else
   {
      _root.handCur.fxCurPrs(myHand,_parent.sd,Other.myHand);
   }
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
   if(mon)
   {
      if(_xmouse > px + 25 || _xmouse < px - 25 || _ymouse > py + 25)
      {
         _root.fce.fceOn("cmOff2","R",null,null,1);
         glvOff();
         if(_root.v_dbl && _root["v_glv2" + _parent.sdo] != 99)
         {
            Other.glvOff();
         }
      }
   }
};
