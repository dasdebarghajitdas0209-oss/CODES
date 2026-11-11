function rst()
{
   if(_root.cos_so.data["c" + _root.v_cst + "pnstGrd2"] == 1 || _root.cos_so.data["c" + _root.v_cst + "pnstGrd2"] == 3)
   {
      if(_root.v_pnst >= 6)
      {
         gotoAndStop("ybr");
      }
      else
      {
         gotoAndStop("on");
      }
      _root.colCos(this,"pnst_0");
   }
   else
   {
      gotoAndStop("off");
   }
}
rst();
