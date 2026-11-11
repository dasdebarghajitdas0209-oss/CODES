onClipEvent(enterFrame){
   if(_parent.alwRes())
   {
      pt++;
      if(pt == stTime)
      {
         if(_root.command.com1.dischgIn.noRes)
         {
            _root.cap.playVo("sirent01",-1,1,"open2m");
            _root.fce.chgEl("shut2",-1,null,1);
         }
         else if(_root.v_emo <= 1)
         {
            _root.cap.playVo([["gux","kuxx","ux","uxx","nmux","ahax","xx"],["ahaa","an","haxx","kuxx","nfu","ux","ahax"]],-1,1);
            _root.fce.chgEl("shut2",-1,null,1);
            _root.fce.chgTear(["on"],1);
         }
         else if(_root.v_emo >= 2)
         {
            _root.cap.playVo(["an","aha","ahaa","ahahax","ahax","ux"],-1,1);
            _root.fce.chgEl("def",-1,null,1);
            _root.fce.chgEbs("dn",-1,null,0,1);
            _root.fce.chgYodare("R","on",1);
         }
         rnd = _root.genRnd(10,80);
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
