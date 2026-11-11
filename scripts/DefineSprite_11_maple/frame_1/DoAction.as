function leafCol()
{
   var _loc3_ = _root.genRnd(0,30);
   if(_loc3_ == 0)
   {
      _root.chgCol(this,176,217,0);
   }
   else if(_loc3_ >= 1 && _loc3_ <= 17)
   {
      _root.chgCol(this,245,46,0);
   }
   else
   {
      _root.chgCol(this,255,247,0);
   }
}
play();
this._x = _root.genRnd(0,Stage.width);
minScl = 10;
maxScl = 22;
maxSwgSpd = 50;
maxFallSpd = 110;
swgRate = 35;
roDeg = 30;
border = 460;
leafCol();
mag = _root.genRnd(minScl,maxScl);
this._xscale = this._yscale = mag;
swgSpd = maxSwgSpd * (mag / 100);
fallSpd = maxFallSpd * (mag / 100);
rmvPos = border + (mag - minScl) * ((Stage.height + 20 - border) / (maxScl - 10 - minScl));
this.onEnterFrame = function()
{
   if(this._y > rmvPos)
   {
      this.removeMovieClip();
   }
   if(!_root.genRnd(0,swgRate))
   {
      swgSpd *= -1;
   }
   this._x += swgSpd;
   this._y += fallSpd;
   this._rotation += _root.genRnd(0,roDeg);
};
