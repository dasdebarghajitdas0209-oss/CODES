onClipEvent(enterFrame){
   if(mon && _root.v_tmode == 2)
   {
      if(_root.sys_so.data.v_spdAnlI == 3)
      {
         _root.fce.man1.move2();
      }
      else if(_root.sys_so.data.v_spdAnlI == 4)
      {
         _root.fce.man1.move3();
      }
      else
      {
         _root.fce.man1.move1();
      }
   }
}
