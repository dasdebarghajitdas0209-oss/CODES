function rst()
{
   if(_root.v_insert)
   {
      gotoAndStop("off");
   }
   else if(_root.v_pant == 1)
   {
      gotoAndStop("b1");
   }
   else if(_root.v_pant == 7)
   {
      gotoAndStop("b2");
   }
   else
   {
      gotoAndStop("off");
   }
}
rst();
this.onPress = function()
{
   if(_root.jdgPt() == -51)
   {
      _parent.pantOp1.prs();
   }
   else
   {
      _parent.pantOp1.prsS();
   }
};
this.onRelease = function()
{
   if(_root.jdgPt() == -51)
   {
      _parent.pantOp1.rls();
   }
   else
   {
      _parent.pantOp1.rlsS();
   }
};
this.onReleaseOutside = function()
{
   if(_root.jdgPt() == -51)
   {
      _parent.pantOp1.rls();
   }
   else
   {
      _parent.pantOp1.rlsS();
   }
};
this.onRollOver = function()
{
   if(_root.jdgPt() == -51)
   {
      _parent.pantOp1.ovr();
   }
   else
   {
      _parent.pantOp1.ovrS();
   }
};
