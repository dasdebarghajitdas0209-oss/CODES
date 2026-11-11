function rst()
{
   if(_root.v_pose)
   {
      _root.gtSd(this);
      if(_root.v_pant == 6 && sd == "L")
      {
         gotoAndStop("p1");
         _root.colCos(this,"pant_0");
      }
      else
      {
         gotoAndStop("off");
      }
   }
   else
   {
      gotoAndStop("p0");
   }
}
rst();
this.onPress = function()
{
   _root.main.bk.bodyBtm.bodyBtm1.pantBk.pantBk1ld.pantBk1.prs();
};
this.onRelease = function()
{
   _root.main.bk.bodyBtm.bodyBtm1.pantBk.pantBk1ld.pantBk1.rls();
};
this.onReleaseOutside = function()
{
   _root.main.bk.bodyBtm.bodyBtm1.pantBk.pantBk1ld.pantBk1.rls();
};
this.onRollOver = function()
{
   _root.main.bk.bodyBtm.bodyBtm1.pantBk.pantBk1ld.pantBk1.ovr();
};
