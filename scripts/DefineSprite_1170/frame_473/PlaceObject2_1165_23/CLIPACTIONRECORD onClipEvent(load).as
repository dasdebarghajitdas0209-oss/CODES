onClipEvent(load){
   function init()
   {
      pt = st - 5;
   }
   st = 50;
   if(_root.v_emo == 0 && !_root.v_insTime)
   {
      _root.fce.chgEbx(null,null,null,-1,0,"L");
   }
   _root.fce.chgEl(["half","shut1"]);
   _root.v_nf = 1;
}
