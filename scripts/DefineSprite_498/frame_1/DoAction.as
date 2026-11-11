function rst()
{
   gotoAndStop(_root.v_face);
}
rst();
this.onPress = function()
{
   _parent._parent.faces.prs();
};
this.onRelease = function()
{
   _parent._parent.faces.rls();
};
this.onReleaseOutside = function()
{
   _parent._parent.faces.rls();
};
this.onRollOver = function()
{
   _parent._parent.faces.ovr();
};
