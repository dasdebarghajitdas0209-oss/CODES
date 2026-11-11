function rst()
{
   if(this._name != "ssBk2" && (_root.v_pant == 11 || _root.v_pant == 12))
   {
      gotoAndStop("on");
   }
   else
   {
      gotoAndStop("off");
   }
}
rst();
_root.colCos(this,"pant_0");
this.onPress = function()
{
   if(_root.v_pose)
   {
      if(this._name != "ssBk2" && !_root.v_insert)
      {
         _root.main.bk.bodyTop.bodyTop1.cos0.bra.prs(3);
      }
   }
   else
   {
      _parent._parent._parent.cos0.brald.bra.ttop.prs(4);
   }
};
this.onRelease = function()
{
   if(this._name != "ssBk2" && _root.v_pose)
   {
      _root.main.bk.bodyTop.bodyTop1.cos0.bra.rls();
   }
   else
   {
      _parent._parent._parent.cos0.brald.bra.ttop.rls();
   }
};
this.onReleaseOutside = function()
{
   if(this._name != "ssBk2" && _root.v_pose)
   {
      _root.main.bk.bodyTop.bodyTop1.cos0.bra.rls();
   }
   else
   {
      _parent._parent._parent.cos0.brald.bra.ttop.rls();
   }
};
this.onRollOver = function()
{
   if(!_root.v_pose || this._name != "ssBk2")
   {
      _root.guide.gdOn("repUp","ssTearFr");
   }
};
