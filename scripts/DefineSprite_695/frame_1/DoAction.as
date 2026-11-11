mag = 110;
spd = 2;
cnt = 0;
pt = 0;
this.onEnterFrame = function()
{
   if(_root.stage.aniBg())
   {
      pt++;
      if(pt % spd == 0)
      {
         if(cnt % 2 == 0)
         {
            this._xscale = this._yscale = mag;
         }
         else
         {
            this._xscale = this._yscale = 100;
         }
         cnt++;
      }
   }
};
