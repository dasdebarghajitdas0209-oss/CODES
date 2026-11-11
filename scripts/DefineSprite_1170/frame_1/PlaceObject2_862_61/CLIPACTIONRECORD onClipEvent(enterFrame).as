onClipEvent(enterFrame){
   if(_root.v_tmode == 2 && mon)
   {
      if(_root.sys_so.data.v_spdManI == 3)
      {
         _root.fce.man1.move2();
      }
      else if(_root.sys_so.data.v_spdManI == 4)
      {
         _root.fce.man1.move3();
      }
      else
      {
         _root.fce.man1.move1();
      }
   }
}
