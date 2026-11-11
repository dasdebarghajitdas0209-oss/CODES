function rst()
{
   if(_root.v_top15L == 4 || _root.v_top15L == 6)
   {
      gotoAndStop("f2");
   }
   else if(_root.v_top15L == 8)
   {
      gotoAndStop("f3");
   }
   else
   {
      gotoAndStop("f1");
   }
}
rst();
_root.colCos(this,"top15_0");
