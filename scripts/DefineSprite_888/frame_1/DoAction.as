pt = 0;
deg = -2;
this.onEnterFrame = function()
{
   pt++;
   if(pt % 2 == 0)
   {
      deg *= -1;
      this._rotation += deg;
   }
};
