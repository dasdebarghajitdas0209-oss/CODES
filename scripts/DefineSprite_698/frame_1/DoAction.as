function mvLite()
{
   var _loc2_ = Math.random() * this.wid * 2 - this.wid;
   var _loc3_ = Math.random() * this.wid * 2 - this.wid;
   this.cnt += 1;
   if(this.cnt % 2 == 0)
   {
      this._x = orgX;
      this._y = orgY;
      this._alpha = this.bright;
   }
   else
   {
      this._x += wid;
      this._y += wid;
      this._alpha = this.bright * 0.9;
   }
}
orgX = this._x;
orgY = this._y;
cnt = 0;
wid = 1;
bright = 40;
this._alpha = bright;
this.onEnterFrame = function()
{
   if(_root.stage.aniBg() && _root.genRnd(0,8) == 0)
   {
      mvLite();
   }
};
