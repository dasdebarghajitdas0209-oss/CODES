onClipEvent(load){
   _parent.stop();
   if(_root.v_emo >= 2)
   {
      _root.fce.chgFace("dn");
      if(_root.v_zoom != 2)
      {
         _root.fce.chgEl("half");
      }
   }
   st = 65;
}
