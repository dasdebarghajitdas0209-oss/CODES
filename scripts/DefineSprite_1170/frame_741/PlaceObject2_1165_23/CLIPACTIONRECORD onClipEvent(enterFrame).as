onClipEvent(enterFrame){
   pt++;
   if(pt == st)
   {
      _root.cap.playVo(["72j","uux","nnx","nfu","nfuz","uuu"]);
      _root.hme.hme(1,2,0,3);
      _root.lmM.lmM("mmO",-2,2,3);
      if(_root.jdgClsLeg())
      {
         _root.lmL.lmL("lg",2,2,3);
      }
      _root.lmF.lmF("ft",2,2,3);
   }
   else if(pt == st + 12)
   {
      _root.fce.trnFace();
      _root.fce.chgEl("shut2m",100);
      _root.hme.hme(1,3,0,20);
      _root.lmM.lmM("mmO",-3,2,20);
      if(_root.jdgClsLeg())
      {
         _root.lmL.lmL("lg",3,2,20);
      }
      _root.lmF.lmF("ft",3,2,20);
   }
   else if(pt == st + 44)
   {
      _parent.play();
   }
}
