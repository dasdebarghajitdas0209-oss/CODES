onClipEvent(load){
   _parent.stop();
   if(_parent.insAct == 99)
   {
      _root.fce.fceOn("def",null,null,null,null,null,null,null,1);
      _root.endSnd = 3;
      this.reduceTime = 19;
   }
   else
   {
      _root.cap.playVo("suspend",null,1);
      this.reduceTime = 0;
   }
   lst = 100;
}
