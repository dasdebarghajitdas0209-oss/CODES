function rst()
{
   if(_root.v_nure)
   {
      if(_currentframe < 3)
      {
         gotoAndStop("n1");
      }
   }
   else
   {
      gotoAndStop("n0");
   }
}
function nureStart()
{
   if(_currentframe < 3)
   {
      gotoAndStop("start");
      play();
   }
}
rst();
if(rc)
{
   _root.colCos(this,rc,1);
}
