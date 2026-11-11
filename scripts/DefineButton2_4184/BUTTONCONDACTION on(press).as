on(press){
   var dis = _root.jdgLay("pant",0,1) >= 4 ? null : 1;
   if(_root.jdgDc(dis))
   {
      eval(Man).prs();
      dc = 1;
   }
   else
   {
      prs();
   }
}
