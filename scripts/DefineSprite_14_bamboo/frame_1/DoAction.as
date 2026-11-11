play();
this._x = _root.genRnd(-800,Stage.width);
minScl = 15;
maxScl = 45;
maxSwgSpd = 110;
maxFallSpd = 100;
roDeg = 20;
border = 460;
_root.chgCol(this,255,245,153);
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
   this._x += swgSpd;
   this._y += fallSpd;
   this._rotation += _root.genRnd(0,roDeg);
};
