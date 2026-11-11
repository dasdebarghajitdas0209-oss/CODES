function flashL()
{
   var _loc4_ = 270;
   _root.chgCol(_root.main,_loc4_,_loc4_,_loc4_);
   _root.chgCol(_parent.hangSwitch,_loc4_,_loc4_,_loc4_);
   _root.chgCol(this,_loc4_,_loc4_,_loc4_);
}
function rstFlashL()
{
   _root.rstCol(_root.main);
   _root.rstCol(_parent.hangSwitch);
   _root.rstCol(this);
}
nextFrame();
pt = 0;
st = 30;
this.onEnterFrame = function()
{
   if(_root.stage.aniBg())
   {
      pt++;
      if(pt == st)
      {
         gotoAndStop("cam");
         play();
      }
      else if(pt == st + 1)
      {
         if(_root.genRnd(0,2) == 0)
         {
            rnd = 3;
         }
         else
         {
            rnd = _root.genRnd(24,300);
         }
      }
      else if(pt == st + 1 + rnd)
      {
         pt = st - 1;
      }
   }
};
