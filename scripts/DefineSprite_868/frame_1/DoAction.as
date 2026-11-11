function rst()
{
   if(_root.jdgBrstSize() == 0 || _root.jdgT15() == 4 && _root.jdgLay("top15",0,1) < 9)
   {
      gotoAndStop("off");
   }
   else if(_root.jdgBrstSize() == 1)
   {
      gotoAndStop("s1");
   }
   else
   {
      gotoAndStop("s0");
   }
   _root.colSkn(s0,0);
   _root.colSkn(s1,1);
}
stop();
rst();
