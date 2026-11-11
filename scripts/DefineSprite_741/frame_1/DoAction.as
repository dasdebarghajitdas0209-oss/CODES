function rst()
{
   if(_root.v_btmB >= 6)
   {
      gotoAndStop("off");
   }
   else
   {
      gotoAndStop("def");
   }
}
if(this._name == "mdBack")
{
   rst();
   _root.colCos(this,"top15_0");
}
stop();
