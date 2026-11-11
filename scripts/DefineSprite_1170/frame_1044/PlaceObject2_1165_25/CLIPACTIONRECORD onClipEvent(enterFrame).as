onClipEvent(enterFrame){
   if(_parent.alwRes())
   {
      pt++;
      if(pt == st - 1)
      {
         _root.stopRootScripts(2,"suspend");
         ptr = 0;
      }
      else if(_root.v_emo == 1 && _root.v_ndTime == 1 && !sknn)
      {
         if(pt == st)
         {
            _root.cap.playVo(["anger","60j"],null,1,null,null,null,0);
            _root.fce.rstMayu(1,0);
            _root.fce.chgEl("shut1",-1,null,1);
         }
         else if(pt == st + 60)
         {
            _root.fce.rstMayu(1);
         }
         else if(pt == st + 65)
         {
            _root.cap.playVo("sekinin",20,1);
            _root.fce.chgEl("def",-1,null,1);
            _root.fce.chgEbx(null,"Rup","Rup",-1,1,"up");
            sknn = 1;
         }
      }
      else if(_root.v_emo == 0 || _root.v_emo == 1 && (sknn || _root.v_ndTime > 1))
      {
         if(pt == st)
         {
            _root.cap.playVo([["iyaa","ha","aa","dame","15j","62j","sirent01"],["aa","an","ha","n_","nfuz","dame",optv]],40,1);
            _root.fce.rstMayu(1);
            _root.fce.chgEl(["shut2m","shut1"],-1,null,1);
            _root.fce.chgTear(["onStart"],1);
            if(_root.v_ndTime > 1)
            {
               _root.fce.chgYodare("R",[null,"onStart"],1);
            }
         }
      }
      else if(_root.v_emo >= 2)
      {
         if(pt == st)
         {
            _root.cap.playVo(["aaaa","haaa","ramee","aha","n_","nfuz","ramedesu","fua","haaq","hoeq","hyai","66j","67j","68j","69j","70j","74j","75j","76j","77j"],60,1,null,"def","half");
            _root.fce.rstMayu(1);
            _root.fce.chgEl("def",-1,null,1);
            _root.fce.chgYodare("L","onStart",1);
            _root.fce.chgYodare("R","onStart",1);
         }
      }
      if(_root.endSnd)
      {
         ptr++;
         if(ptr == 20)
         {
            _root.fce.chgEl(["half","shut1"],-1,null,1);
            _root.fce.chgEbx(null,"def","def",-1,1,"def");
            rnd = _root.holdTime();
         }
         else if(ptr == 20 + rnd)
         {
            ptr = 0;
            pt = st - 1;
         }
      }
   }
   else
   {
      pt = st - 5;
   }
}
