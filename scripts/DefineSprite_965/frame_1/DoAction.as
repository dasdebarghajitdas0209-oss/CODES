function chgHand(n, dir, lm)
{
   var _loc5_;
   if(dir)
   {
      _loc5_ = n;
   }
   else
   {
      _loc5_ = _currentframe + n;
   }
   if(_loc5_ < 1)
   {
      _loc5_ = 1;
   }
   else if(_loc5_ > _totalframes)
   {
      _loc5_ = _totalframes;
   }
   gotoAndStop(_loc5_);
   if(!lm)
   {
      _root.hme.stopHme();
   }
}
_parent.glv1.glv1_1.glv1_2.rst("c1");
