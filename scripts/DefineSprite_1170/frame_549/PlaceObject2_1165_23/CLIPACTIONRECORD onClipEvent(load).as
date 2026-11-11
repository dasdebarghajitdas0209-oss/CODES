onClipEvent(load){
   _parent.stop();
   _root.cap.playVo("suspend",null,1);
   st = _root.v_emo != 1 ? -20 : 30;
   if(_root.v_emo == 0)
   {
      va = ["moiya","moYamete","kannin","dameexx","iyaaaxx","i-yaxx","yametexx","17j","22j","26j"];
   }
   else if(_root.v_emo == 1)
   {
      va = _root.v_insTime ? ["34j","aa","ha","nfuz","dame"] : "64j";
      met = 15;
   }
   else
   {
      va = ["ahaha","71j","73j","78j"];
   }
   _root.fce.chgEl([null,null,"def"]);
}
