on(press){
   _root.stage.studio.gotoAndPlay("cam");
   if(counter == 0)
   {
      counter = 255;
   }
   else
   {
      counter--;
   }
   battery.reduce();
}
