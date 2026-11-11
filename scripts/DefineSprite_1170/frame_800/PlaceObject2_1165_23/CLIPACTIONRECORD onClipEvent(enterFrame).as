onClipEvent(enterFrame){
   if(_parent.alwRes())
   {
      pt++;
      if(pt == stTime)
      {
         if(_root.command.com1.dischgIn.noRes)
         {
            _root.cap.playVo("sirent01",-1,1,"open2m");
            _root.fce.chgEl("shut1",-1,null,1);
         }
         else if(_root.v_emo <= 1)
         {
            _root.cap.playVo([["iyaax","nfu","kuxx","n","nnx","ux","uux","an","yaxx","aaxx","haxx"],["aa","aha","an","n","nfuz","dame"]],-1,1);
            _root.fce.chgEl(["shut2m","shut1"],-1,null,1);
            _root.fce.chgTear(["on"],1);
         }
         else if(_root.v_emo >= 2)
         {
            _root.cap.playVo(["aaaa","aa","aha","ahaha","an","ramee","ha","nfuz","ux"],-1,1);
            _root.fce.chgEl("def",-1,null,1);
            _root.fce.chgEbs("dn",-1,null,0,1);
            _root.fce.chgYodare("R","on",1);
         }
         rnd = _root.genRnd(28,100);
      }
      else if(pt == stTime + rnd)
      {
         pt = stTime - 1;
      }
   }
   else
   {
      pt = stTime - 5;
   }
}
