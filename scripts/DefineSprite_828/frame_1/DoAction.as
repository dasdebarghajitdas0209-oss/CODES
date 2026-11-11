function rst(off)
{
   if(off)
   {
      gotoAndStop("offStart");
   }
   else if(_root.v_gart == 1 && _root["v_gstB" + sd] == 99)
   {
      gotoAndStop("on");
   }
   else
   {
      gotoAndStop("off");
   }
}
_root.gtSd(this);
rst();
GtsHg = "_root.main.fr.legOp.momos.momo" + sd + ".gtsHg";
this.onPress = function()
{
   eval(GtsHg).prs();
};
this.onRelease = function()
{
   eval(GtsHg).rls();
};
this.onReleaseOutside = function()
{
   eval(GtsHg).rls();
};
this.onRollOver = function()
{
   eval(GtsHg).ovr();
};
