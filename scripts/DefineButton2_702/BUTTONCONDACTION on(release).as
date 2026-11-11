on(release){
   if(_root.sys_so.data["stg" + _root.v_cst] != 54)
   {
      _root.sys_so.data["stg" + _root.v_cst] = 54;
      rst();
      _root.fcl.fclOn("up","def",_root.tchVo0(),5,10,0,5,10,15);
   }
   else
   {
      _root.sys_so.data["stg" + _root.v_cst] = 52;
      rst();
      if(_root.fce.jdgBtm() >= 3 && _root.v_emo < 2)
      {
         _root.fce.fceOn("liteOn");
      }
      else
      {
         _root.fce.chgEbs("up",15);
      }
   }
}
