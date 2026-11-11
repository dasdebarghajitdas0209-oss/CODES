onClipEvent(enterFrame){
   if(_root.sys_so.data.v_dschgLoop && insAct != 100 && _root.v_zoom != 2)
   {
      pt++;
      if(pt == st)
      {
         _root.cap.playVo([["aa","ha","iyaa","n_","??01"],["aa","aaaa","ha","haaa","n_","nfuz","dame"],["aaaa","haaa","n_","haaq","hoeq","69j","70j","71j","73j","78j"]],40,null,null,null,"half");
         _root.fce.chgEl("half");
         _root.fce.chgEbs("dnx");
      }
      if(_root.endSnd)
      {
         ptr++;
         if(ptr == 1)
         {
            rnd = _root.holdTime();
         }
         else if(ptr == 1 + rnd)
         {
            ptr = 0;
            pt = st - 1;
         }
      }
   }
   else
   {
      _parent.spmOutNow();
   }
}
