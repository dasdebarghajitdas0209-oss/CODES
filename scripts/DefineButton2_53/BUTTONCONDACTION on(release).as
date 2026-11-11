on(release){
   if(_root.sys_so.data["stg" + _root.v_cst] != 17)
   {
      _root.sys_so.data["stg" + _root.v_cst] = 17;
      rst();
      _root.fcl.fclOn("Rup","def",_root.tchVo0(),5,10,0,5,10,15);
   }
   else
   {
      _root.sys_so.data["stg" + _root.v_cst] = 15;
      rst();
      if(_root.fce.jdgBtm() >= 3 && _root.v_emo < 2)
      {
         _root.fce.fceOn("liteOn","Rup");
      }
      else
      {
         _root.fce.chgEbs("Rup",15);
      }
   }
}
