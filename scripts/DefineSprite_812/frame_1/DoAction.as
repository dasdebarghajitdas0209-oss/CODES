function rst()
{
   if(_root.v_pant == 99)
   {
      gotoAndStop("off");
   }
   else
   {
      gotoAndStop("def");
   }
   if(_root.v_hang)
   {
      this._x = orgX + 0.4;
      this._y = orgY - 8.4;
   }
   else
   {
      _root.setPs(this,1);
   }
}
_root.setPs(this);
rst();
_root.colCos(this,"pant_1");
