onClipEvent(enterFrame){
   if(act)
   {
      pt++;
      if(_root.v_emo > 0 && pt > _root.t2f(1))
      {
         _root.main.nure();
         act = null;
      }
   }
}
