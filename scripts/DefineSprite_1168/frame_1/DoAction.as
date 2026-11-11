function suspend()
{
   stt = null;
   pt2 = 0;
   if(ffO)
   {
      _root.lmF.stopMvfgR("close");
   }
}
function restart()
{
   stt = 1;
}
stt = 1;
pt = pt2 = 0;
hdst = hdS * (Math.abs(hdD) - 1) - ofst;
mmst = mmS * (Math.abs(mmD) - 1);
mmOst = mmOS * (Math.abs(mmOD) - 1);
mmBst = mmBS * (Math.abs(mmBD) - 1);
mmBOst = mmBOS * (Math.abs(mmBOD) - 1);
lgst = lgS * (Math.abs(lgD) - 1);
lgBst = lgBS * (Math.abs(lgBD) - 1);
ftst = ftS * (Math.abs(ftD) - 1);
ftBst = ftBS * (Math.abs(ftBD) - 1);
if(!_root.v_pose)
{
   strkAry = _root.v_hang ? [hdst,mmOst,lgst,ftst] : [hdst,mmst];
}
else
{
   strkAry = _root.v_hang ? [hdst,mmBOst,lgBst,ftBst] : [hdst,mmBst];
}
strkAry.sort(Array.NUMERIC);
strkTime = strkAry[strkAry.length - 1] + 2;
this.onEnterFrame = function()
{
   if(stt && (!intrpt || intrpt && !_root.fce.jdgFceOn() && !_root.fcl.jdgFclOn()))
   {
      if(_root.v_pose && ffO)
      {
         pt2++;
         if(pt2 == st)
         {
            _root.lmF.mvfgR(ffO,ffC);
         }
      }
      pt++;
      if(pt == st)
      {
         if(hdD)
         {
            _root.hme.hme(hdD,hdS);
         }
      }
      else if(pt == st + ofst)
      {
         if(mmD)
         {
            _root.lmM.lmM("mm",mmD,mmS);
         }
         if(mmOD)
         {
            _root.lmM.lmM("mmO",mmOD,mmOS);
         }
         if(mmBD)
         {
            _root.lmM.lmM("mmB",mmBD,mmBS);
         }
         if(mmBOD)
         {
            _root.lmM.lmM("mmBO",mmBOD,mmBOS);
         }
         if(lgD)
         {
            if(!altLg || altLg && _root.jdgClsLeg())
            {
               _root.lmL.lmL("lg",lgD,lgS);
            }
         }
         if(lgBD)
         {
            _root.lmL.lmL("lgB",lgBD,lgBS);
         }
         if(ftD)
         {
            _root.lmF.lmF("ft",ftD,ftS);
         }
         if(ftBD)
         {
            _root.lmF.lmF("ftB",ftBD,ftBS);
         }
         if(!_root.v_pose && ffO)
         {
            _root.lmF.mvfgR(ffO,ffC);
         }
         rnd1 = Math.floor(Math.random() * wt) + strkTime;
      }
      else if(pt == st + rnd1)
      {
         if(hdD)
         {
            _root.hme.hme(3,hdS);
         }
      }
      else if(pt == st + ofst + rnd1)
      {
         if(mmD)
         {
            _root.lmM.lmM("mm",- mmD,mmS);
         }
         if(mmOD)
         {
            _root.lmM.lmM("mmO",- mmOD,mmOS);
         }
         if(mmBD)
         {
            _root.lmM.lmM("mmB",- mmBD,mmBS);
         }
         if(mmBOD)
         {
            _root.lmM.lmM("mmBO",- mmBOD,mmBOS);
         }
         if(lgD)
         {
            _root.lmL.lmL("lg",1,lgS,null,1);
         }
         if(lgBD)
         {
            _root.lmL.lmL("lgB",- lgBD,lgBS);
         }
         if(ftD)
         {
            _root.lmF.lmF("ft",1,ftS,null,1);
         }
         if(ftBD)
         {
            _root.lmF.lmF("ftB",1,ftBS,null,1);
         }
         rnd2 = Math.floor(Math.random() * it) + strkTime;
      }
      else if(pt == st + ofst + rnd1 + rnd2)
      {
         pt = st - 1;
      }
   }
};
this.onUnload = function()
{
   _root.lmF.stopMvfgR();
};
