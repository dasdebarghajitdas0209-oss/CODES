function rst()
{
   if(_root.v_hang)
   {
      this.enabled = false;
   }
   else
   {
      this.enabled = true;
   }
}
rst();
this.onPress = function()
{
   _parent._parent.prs(_parent.sd);
};
this.onRelease = function()
{
   _parent._parent.rls();
};
this.onReleaseOutside = function()
{
   _parent._parent.rls();
};
this.onRollOver = function()
{
   _parent._parent.ovr();
};
