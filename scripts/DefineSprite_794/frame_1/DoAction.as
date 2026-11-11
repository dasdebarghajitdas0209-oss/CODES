function rst(off)
{
   if(_root.v_btmF == 99 || off)
   {
      gotoAndStop("off");
   }
   else
   {
      gotoAndStop("h" + _root.v_hang);
   }
}
rst();
