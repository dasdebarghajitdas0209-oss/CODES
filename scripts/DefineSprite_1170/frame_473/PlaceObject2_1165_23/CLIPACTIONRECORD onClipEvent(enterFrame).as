onClipEvent(enterFrame){
   if(_parent.alwRes())
   {
      pt++;
      if(pt == st)
      {
         _root.stopRootScripts(2);
         _root.fce.chgEl(["half","shut1","def"],null,null,1);
      }
      else if(pt == st + 5)
      {
         _root.cap.playVo([["sirent01"],["aa","ha","haaa","n_","nfuz","dame","sirent01"],["aaaa","aha","an","haaa","n_","66j","68j","69j","70j"]],[5,20,null],1);
         _root.fce.chgTear(["onStart"],1);
         _root.fce.chgYodare("R",[null,null,"onStart"],1);
         st = _root.holdTime();
         pt = 0;
      }
   }
   else
   {
      pt = st - 5;
   }
}
