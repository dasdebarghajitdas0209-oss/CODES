function rst()
{
   if(_root.v_top63L == 9)
   {
      gotoAndStop("on");
   }
   else
   {
      gotoAndStop("off");
   }
}
function rls()
{
   eval(Oa).oaRls(this);
}
rst();
Oa = "_root.main.fr.cos0.top63ld.top63";
_root.colCos(this,"top63_0");
this.onPress = function()
{
   eval(Oa).oaPrs(this);
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
   _root.guide.gdOn("oaPkt2");
};
