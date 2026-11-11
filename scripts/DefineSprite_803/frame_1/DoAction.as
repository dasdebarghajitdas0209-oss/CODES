function rst()
{
   _parent.top75ld.setMask(null);
   _parent.top75ld.top75.top75_1.setMask(null);
   _parent.top75ld.top75.arms.setMask(null);
   if(_root.v_top10L < 99)
   {
      gotoAndStop("t10j" + _root.jdgT10() + "L" + _root.v_top10L + "R" + _root.v_top10R);
   }
   else
   {
      if(_root.v_top50L >= 99)
      {
         gotoAndStop("none");
         return undefined;
      }
      gotoAndStop("t50");
   }
   if(_root.v_top50L == 9 && _parent.top75ld.top75.top75_1)
   {
      _parent.top75ld.top75.top75_1.setMask(cm1);
      _parent.top75ld.top75.arms.setMask(cm2);
   }
   else
   {
      _parent.top75ld.setMask(this);
   }
}
rst();
