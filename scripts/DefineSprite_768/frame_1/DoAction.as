function rst(os)
{
   if(os)
   {
      gotoAndStop("onStart");
      play();
   }
   else if(_root.v_top40 == 9)
   {
      gotoAndStop("on");
   }
   else
   {
      gotoAndStop("off");
   }
}
Apr = "_root.main.fr.cos0.btm2ld0.btm2ld.btm2";
rst();
this.onPress = function()
{
   eval(Apr).prs(3);
};
this.onRelease = function()
{
   eval(Apr).rls();
};
this.onReleaseOutside = function()
{
   eval(Apr).rls();
};
this.onRollOver = function()
{
   eval(Apr).ovr(null,3);
};
