function rst(t)
{
   if(!_root.stage.aniBg())
   {
      gotoAndStop("off");
   }
   else if(!_root.v_pose)
   {
      if(t)
      {
         gotoAndStop("turnOn");
         play();
      }
      else
      {
         gotoAndStop("on");
      }
   }
   else if(t)
   {
      gotoAndStop("turnOnBk");
      play();
   }
   else
   {
      gotoAndStop("onBk");
   }
}
rst(1);
_root.myBlur(this,8,8);
