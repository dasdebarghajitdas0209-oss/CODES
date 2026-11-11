gotoAndStop("def");
gotoAndStop("p" + _root.jdgPt());
this.onEnterFrame = function()
{
   if(_root.jdgPt() == 5)
   {
      if(_root.main.fr.legOp._currentframe == 1)
      {
         this._xscale = 40;
      }
      else if(_root.main.fr.legOp._currentframe == 2)
      {
         this._xscale = 54;
      }
      else if(_root.main.fr.legOp._currentframe == 3)
      {
         this._xscale = 68;
      }
      else if(_root.main.fr.legOp._currentframe == 4)
      {
         this._xscale = 79;
      }
      else if(_root.main.fr.legOp._currentframe == 5)
      {
         this._xscale = 95;
      }
      else
      {
         this._xscale = 100;
      }
   }
   else if(_root.main.fr.legOp._currentframe == 1)
   {
      this._xscale = 25;
   }
   else if(_root.main.fr.legOp._currentframe == 2)
   {
      this._xscale = 33.4;
   }
   else if(_root.main.fr.legOp._currentframe == 3)
   {
      this._xscale = 42;
   }
   else if(_root.main.fr.legOp._currentframe == 4)
   {
      this._xscale = 50;
   }
   else if(_root.main.fr.legOp._currentframe == 5)
   {
      this._xscale = 64.7;
   }
   else if(_root.main.fr.legOp._currentframe == 6)
   {
      this._xscale = 74.8;
   }
   else if(_root.main.fr.legOp._currentframe == 7)
   {
      this._xscale = 86;
   }
   else
   {
      this._xscale = 100;
   }
};
