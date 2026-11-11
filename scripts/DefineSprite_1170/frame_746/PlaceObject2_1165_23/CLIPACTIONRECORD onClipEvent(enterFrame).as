onClipEvent(enterFrame){
   if(_parent.alwRes())
   {
      pt++;
      if(pt == stTime)
      {
         _root.stopRootScripts();
         if(_root.command.com1.dischgIn.noRes)
         {
            _root.cap.playVo("sirent01",-1,1,"half");
            _root.fce.chgEl(["shut2m","shut1"],-1,null,1);
         }
         else if(_root.v_emo <= 1)
         {
            _root.cap.playVo([["aa","ha","iyaa","n","nfu","yametee","kuxx","kuuxx","nnx","ux","uux"],["aa","aha","ahaha","an","ha","n_","nfuz","dame"]],20,1);
            _root.fce.chgEl(["shut2m","shut1"],-1,null,1);
            _root.fce.chgTear(["onStart"],1);
         }
         else if(_root.v_emo >= 2)
         {
            _root.cap.playVo(["aaaa","aha","ahaa","ahahax","an","haaa","fua","ramee","n_","hyai","67j","68j","70j","72j","73j","77j"],null,1,null,"def");
            _root.fce.chgEl("def",-1,null,1);
            _root.fce.chgYodare("R","onStart",1);
         }
         rnd = _root.genRnd(80,150);
      }
      else if(pt == stTime + rnd)
      {
         pt = stTime - 1;
      }
      pt2++;
      if(pt2 == stTime + 3)
      {
         if(_root.v_emo >= 2 && !_root.command.com1.dischgIn.noRes)
         {
            rnd2 = _root.genRnd(250,500);
            _root.fce.trnFace(null,null,null,4);
         }
         else
         {
            rnd2 = _root.genRnd(10,220);
            _root.fce.trnFace();
         }
      }
      else if(pt2 == stTime + 3 + rnd2)
      {
         pt2 = stTime + 2;
      }
   }
   else
   {
      pt = stTime - 5;
   }
}
