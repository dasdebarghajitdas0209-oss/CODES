onClipEvent(enterFrame){
   if(_root.v_emo >= 2 && _parent.alwRes())
   {
      pt++;
      if(pt == rnd)
      {
         _root.hme.hme(2,1,0,4);
      }
      else if(pt == rnd + 1)
      {
         _root.lmM.lmM("mmO",-1,1,4);
         _root.lmF.lmF("ft",1,1,4);
         rnd = _root.genRnd(8,100);
         pt = 0;
      }
   }
}
