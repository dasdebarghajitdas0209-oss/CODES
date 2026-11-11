onClipEvent(load){
   function init()
   {
      pt = stTime - 5;
   }
   function m1Jump(dir)
   {
      with(_parent)
      {
         if(_currentframe > m1sf)
         {
            gotoAndPlay(m1sf * 2 - _currentframe);
         }
      }
   }
   stTime = 10;
}
