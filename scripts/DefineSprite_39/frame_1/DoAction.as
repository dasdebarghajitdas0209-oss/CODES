function rst()
{
   if(_root.v_chain == 1 && _root.sys_so.data["stg" + _root.v_cst] == 33)
   {
      gotoAndStop("ch1b");
   }
   else
   {
      gotoAndStop("ch" + _root.v_chain);
   }
}
rst();
