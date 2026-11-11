function startCur(hcObj, sd, tm, trkObj, trkObjw, hrx, hry, invX, invY, hys, hofX, hofY, hcRot, fg, frx, fry, fys, fofX, fofY)
{
   if(this.hc != hcObj && this.hc != null)
   {
      _root.handCur.fxCurRls(eval(hc));
   }
   this.hc = hcObj;
   this.sd = !sd ? "R" : sd;
   this.trkObj = trkObj;
   this.tm = !tm ? 0 : tm;
   this.trkObjw = trkObjw;
   this.hcOrgX = eval(hc).orgX;
   this.hcOrgY = eval(hc).orgY;
   this.hcOrgRot = eval(hc).orgRot;
   this.hrx = !hrx ? 0 : hrx;
   this.hry = !hry ? 0 : hry;
   this.hcOrgScl = eval(hc).orgYs;
   this.invX = !invX ? 0 : invX;
   this.invY = !invY ? 0 : invY;
   this.hys = !hys ? 0 : hys;
   this.hofX = !hofX ? 0 : hofX;
   this.hofY = !hofY ? 0 : hofY;
   this.hcRot = !hcRot ? 0 : hcRot;
   if(fg && !noFinger())
   {
      this.fg = fg;
      this.fgOrgX = eval(fg).orgX;
      this.fgOrgY = eval(fg).orgY;
      this.fgOrgRot = eval(fg).orgRot;
      this.fgOrgScl = eval(fg).orgYs;
      this.frx = !frx ? 0 : frx;
      this.fry = !fry ? 0 : fry;
      this.fys = !fys ? 0 : fys;
      this.fofX = !fofX ? 0 : fofX;
      this.fofY = !fofY ? 0 : fofY;
   }
   mon = 1;
   lp = 0;
   curMv();
   gotoAndStop("on");
   play();
}
function stopCur()
{
   mon = null;
   if(lp)
   {
      stopCur2();
   }
}
function stopCur2()
{
   amst = 0;
   gotoAndStop("off");
   _root.handCur.fxCurRls(eval(hc));
   if(fg && !noFinger())
   {
      eval(fg).gotoAndStop("off");
      _root.setPs(eval(fg),1);
   }
}
function curMv()
{
   if(trkObj)
   {
      if((!tm || tm && _root.v_tmode == 2) && trkObj != "none")
      {
         areaX = eval(trkObj)._x;
         areaY = eval(trkObj)._y;
      }
      else if(vo)
      {
         if(Math.abs(_ymouse) <= orgR)
         {
            areaY = _ymouse;
         }
         else if(_ymouse < - orgR)
         {
            areaY = - orgR;
         }
         else
         {
            areaY = orgR;
         }
         areaX = 0;
      }
      else if(Math.pow(_xmouse / orgR,2) + Math.pow(_ymouse / orgR,2) <= 1)
      {
         areaX = _xmouse;
         areaY = _ymouse;
      }
      else
      {
         var th = Math.atan2(_ymouse,_xmouse);
         areaX = Math.cos(th) * orgR;
         areaY = Math.sin(th) * orgR;
      }
   }
   else if(trkObjw)
   {
      if(typeof trkObjw == "object")
      {
         var objwx = !eval(trkObjw[0]) ? eval(trkObjw[1]) : eval(trkObjw[0]);
      }
      else
      {
         var objwx = eval(trkObjw);
      }
      if(objwx._name.substr(0,7) == "curArea")
      {
         areaX = !invX ? objwx.areaX : objwx.areaX * -1;
         areaY = !invY ? objwx.areaY : objwx.areaY * -1;
      }
      else
      {
         areaX = objwx._x;
         areaY = objwx._y;
      }
   }
   areaPnt.x = areaX;
   areaPnt.y = areaY;
   if(trkObj)
   {
      if((!tm || tm && _root.v_tmode == 2) && trkObj != "none")
      {
         eval(trkObj)._parent.localToGlobal(areaPnt);
      }
      else
      {
         localToGlobal(areaPnt);
      }
   }
   else if(trkObjw)
   {
      if(objwx._name.substr(0,7) == "curArea")
      {
         localToGlobal(areaPnt);
      }
      else
      {
         objwx._parent.localToGlobal(areaPnt);
      }
   }
   hcPnt.x = areaPnt.x;
   hcPnt.y = areaPnt.y;
   eval(hc)._parent.globalToLocal(hcPnt);
   eval(hc)._x = hcPnt.x + hofX;
   eval(hc)._y = hcPnt.y + hofY;
   eval(hc)._rotation = hcOrgRot + hcRot + (hcPnt.x - hcOrgX) * hrx + (hcPnt.y - hcOrgY) * hry;
   if(typeof hys == "object")
   {
      eval(hc)._xscale = eval(hc)._yscale = hcOrgScl + Math.floor((hcOrgY - eval(hc)._y) * hys[0] * (hcOrgScl / 100));
   }
   else
   {
      eval(hc)._yscale = hcOrgScl + Math.abs((hcOrgY - eval(hc)._y) * hys * (hcOrgScl / 100));
   }
   if(fg && !noFinger())
   {
      fgPnt.x = areaPnt.x;
      fgPnt.y = areaPnt.y;
      eval(fg)._parent.globalToLocal(fgPnt);
      eval(fg)._x = !vo ? fgPnt.x + fofX : fofX;
      eval(fg)._y = fgPnt.y + fofY;
      eval(fg)._rotation = fgOrgRot + (eval(fg)._x - fgOrgX) * frx + (eval(fg)._y - fgOrgY) * fry;
      eval(fg)._yscale = fgOrgScl + (fgOrgY - eval(fg)._y) * fys * (fgOrgScl / 100);
      eval(fg).dispFg();
   }
}
function startAmo(autoPtn, perX, perY, sp, rndSp, rtmx)
{
   perX = !perX ? 100 : perX;
   perX = autoPtn != 3 ? perX : 0;
   perY = !perY ? 100 : perY;
   this.amxw = orgR * perX / 100;
   this.amyw = orgR * perY / 100;
   this.amsp = sp;
   this.aPtn = autoPtn;
   this.rSpd = rndSp;
   this.rtMax = !rtmx ? 50 : rtmx;
   nxtX = _root.genRnd(- orgR,orgR);
   nxtY = _root.genRnd(- orgR,orgR);
   if(autoPtn == 1 || autoPtn == 6)
   {
      revRot = -1;
   }
   else if(autoPtn == 2 || autoPtn == 7)
   {
      revRot *= -1;
   }
   else
   {
      revRot = 1;
   }
   amst = 1;
}
stop();
orgR = 25;
areaPnt = new Object();
hcPnt = new Object();
fgPnt = new Object();
amRot = 0;
revRot = 1;
mvCnt = 0;
this.onMouseMove = function()
{
   if(mon && _root.v_tmode < 2)
   {
      curMv();
   }
   updateAfterEvent();
};
this.onEnterFrame = function()
{
   if(mon && _root.v_tmode == 2)
   {
      curMv();
      if(amst)
      {
         if(aPtn == 4)
         {
            if(!vo)
            {
               amo._x += (nxtX - amo._x) / rSpd;
            }
            amo._y += (nxtY - amo._y) / rSpd;
            if(Math.abs(nxtY - amo._y) < 1)
            {
               if(!vo)
               {
                  nxtX = _root.genRnd(- orgR,orgR);
               }
               nxtY = _root.genRnd(- orgR,orgR);
            }
         }
         else
         {
            amRot += revRot * amsp;
            amo._x = Math.cos(amRot * 3.141592653589793 / 180) * amxw;
            amo._y = Math.sin(amRot * 3.141592653589793 / 180) * amyw;
         }
         if(aPtn == 2 || aPtn == 7)
         {
            mvCnt++;
            if(mvCnt == 1)
            {
               invTime = Math.floor(_root.genRnd(5,rtMax) / (_root.sys_so.data["v_spd" + _root.autoPnl.spd] + 1));
            }
            else if(mvCnt > invTime)
            {
               revRot *= -1;
               mvCnt = 0;
            }
         }
      }
   }
};
