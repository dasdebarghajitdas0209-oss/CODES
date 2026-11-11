function rst()
{
   gotoAndStop("h" + _root.rtnHair());
   this._visible = !_root.v_hood ? true : false;
}
function mvhairBk(n)
{
   if(n)
   {
      this._y += n;
   }
   else
   {
      this._y = this.orgY;
   }
}
function swgAllHair()
{
   if(_root.rtnHair() == 0)
   {
      hairBacks1.h0.gotoAndPlay("R");
      hairBacks1.hs0.play();
      _root.stage.town.townFace.hairBacks.hairBacks1.h0.gotoAndPlay("R");
      _root.stage.town.townFace.hairBacks.hairBacks1.hs0.play();
   }
   else if(_root.rtnHair() == 2)
   {
      hairBacks1.h2.gotoAndPlay("e");
      hairBacks1.hs2.gotoAndPlay("swing");
      _root.stage.town.townFace.hairBacks.hairBacks1.h2.gotoAndPlay("e");
      _root.stage.town.townFace.hairBacks.hairBacks1.h2.gotoAndPlay("swing");
   }
}
function aniHair(obj, sF, dg, fr, wt, dgr, frr)
{
   if(hairBacks1[obj])
   {
      pt = 0;
      sttFrg = 1;
      this.hObj = obj;
      this.sF = sF;
      this.fr = fr;
      this.deg = dg;
      this.wt = wt;
      this.degR = !dgr ? dg + 1 : dgr;
      this.frR = !frr ? fr : frr;
      hairBacks1[obj].gotoAndStop(sF);
      _root.main.fr.faceLd.faces.hairBacksZ.hairBacks.hairBacks1[obj].gotoAndStop(sF);
      _root.stage.town.townFace.hairBacks.hairBacks1[obj].gotoAndStop(sF);
   }
}
rst();
this.onEnterFrame = function()
{
   var _loc2_;
   var _loc3_;
   if(sttFrg)
   {
      pt++;
      _loc2_ = fr;
      while(_loc2_ <= deg * fr)
      {
         if(pt == _loc2_)
         {
            hairBacks1[hObj].nextFrame();
            _root.main.fr.faceLd.faces.hairBacksZ.hairBacks.hairBacks1[hObj].nextFrame();
            _root.stage.town.townFace.hairBacks.hairBacks1[hObj].nextFrame();
         }
         _loc2_ += fr;
      }
      if(wt)
      {
         _loc3_ = deg * fr + wt;
         while(_loc3_ < deg * fr + degR * frR + wt)
         {
            if(pt == _loc3_)
            {
               hairBacks1[hObj].prevFrame();
               _root.main.fr.faceLd.faces.hairBacksZ.hairBacks.hairBacks1[hObj].prevFrame();
               _root.stage.town.townFace.hairBacks.hairBacks1[hObj].prevFrame();
            }
            _loc3_ += frR;
         }
         if(pt >= deg * fr + degR * frR + wt)
         {
            sttFrg = 0;
         }
      }
      else if(pt >= deg * fr)
      {
         sttFrg = 0;
      }
   }
};
