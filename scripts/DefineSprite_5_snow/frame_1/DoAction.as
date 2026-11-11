play();
this._x = _root.genRnd(0,Stage.width);
minScl = 20;
maxScl = 100;
maxSwgSpd = 6;
maxFallSpd = 12;
swgRate = 8;
border = 460;
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
};
