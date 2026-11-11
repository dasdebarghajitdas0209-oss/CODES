onClipEvent(enterFrame){
   if(_root.endSnd)
   {
      pt++;
   }
   if(pt > val)
   {
      _parent.play();
   }
}
