onClipEvent(enterFrame){
   pt++;
   if(_root.v_emo == 1 && pt == st)
   {
      _root.fce.chgEl("shut1");
   }
   else if(_root.v_emo == 1 && pt == st + 5)
   {
      _root.fce.trnFace(null,null,null,5);
   }
   else if(pt == st + 30)
   {
      _root.cap.playVo(va,met);
      _root.hme.hme(1,4);
      _root.lmF.lmF("ft",3,2);
   }
   else if(pt == st + 40)
   {
      _root.lmF.mvFg("close");
   }
   if(_root.endSnd)
   {
      ptr++;
      if(ptr == 10)
      {
         _parent.play();
      }
   }
}
