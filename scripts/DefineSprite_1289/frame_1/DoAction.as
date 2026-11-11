function rst()
{
   if(_root.v_pant == 3 || _root.v_pant == 4)
   {
      _root.v_pant = !(_root.v_pnst == 1 || _root.v_pnst == 6) ? _root.v_pant : 1;
   }
   if(_root.jdgBc() == -11 && _root.v_btmF <= 3 && _root.v_pant <= 6)
   {
      _root.v_pant = 1;
   }
   else if(_root.v_btmF < 4 && _root.v_pant <= 6)
   {
      _root.v_pant = 1;
   }
   _root.v_pant = !(_root.v_insert && _root.v_pant == 1) ? _root.v_pant : 7;
   if(_root.v_pant == 3 || _root.v_pant == 4 || _root.v_pant == 6 || _root.v_pant == 99)
   {
      gotoAndStop("off");
   }
   else if(_root.v_pant == 5)
   {
      gotoAndStop("pt5");
   }
   else if(_root.v_pant == 7)
   {
      _root.v_pant = 7;
      gotoAndStop("pt7");
   }
   else if(_root.jdgPt() == -1 && _root.v_pant == 11)
   {
      gotoAndStop("sssPt11");
   }
   else
   {
      gotoAndStop("pt1");
      eval(LegOp).nkds.rst();
      eval(LegOp).devFrA.nkds.rst();
   }
   eval(Upr).rst();
   eval(Pant6).rst();
   _parent.sldBtnHg.rst();
   eval(LegOp).btm1hgld0.btm1hgld.btm1hg.bnyPantUpr.rst();
   eval(LegOp).momoMask.mmMask();
   eval(LegOp).mhPtOp.chgHand();
   eval(LegOp).swpPntPnst();
   _root.lmM.legBtnRst();
   _root.main.nureRst();
   rf = null;
   _root.rstXY(this);
}
function prs()
{
   _root.prsFunc(this);
   prsHf = !(_root.v_pant == 3 || _root.v_pant == 4) ? 0 : 1;
   if(_root.v_pant == 6)
   {
      _root.fce.chgEbs("Ldn");
      _root.handCur.fxCurPrs(eval(Pant6).pantOpSide1.myHand,"L");
   }
   else
   {
      if(_root.v_pant != 4)
      {
         _root.fcl.fclOn(null,"def",_root.tchVo(1,1,1,2),0,5);
      }
      _root.fce.chgEbs("dnx");
      eval(LegOp).mhPtOp.chgHand();
   }
}
function rls()
{
   if(mon)
   {
      mon = 0;
      if(_root.v_pant == 5)
      {
         _root.fce.fceOn("pt5",null,1,mmCf);
         _root.v_pant = 1;
         rst();
      }
      if(rf)
      {
         _root.fcl.fclOn(null,null,null,-1,-1,1,10,1,20);
      }
      _root.handCur.fxCurRls(eval(LegOp).mhPtOp);
      _root.handCur.fxCurRls(eval(Pant6).pantOpSide1.myHand);
   }
}
function ovr()
{
   if(_root.jdgPt() == -1)
   {
      _root.guide.gdOn("def");
   }
   else if(_root.v_pant == 5 || _root.v_pant == 99)
   {
      _root.guide.gdOn("def");
   }
   else if(_root.v_pant == 6)
   {
      _root.guide.gdOn("pant6Op");
   }
   else if(_root.v_pant == 1 || _root.v_pant == 7)
   {
      _root.guide.gdOn("pant1");
   }
   else
   {
      _root.guide.gdOn("pant1Op");
   }
}
function retFunc()
{
   _root.fce.fceOn("ret1");
   rst();
}
function chgPant()
{
   if(_root.v_pant != 5 && _root.v_pant != 6 && !(_root.jdgBc() && _root.v_btmF < 4) && _root.dstx(this,-60))
   {
      _root.fce.fceOn("ptf",null,1,10,null,"noRld");
      _root.v_pant = 6;
      rst();
      ovr();
   }
   else if(_root.v_pant == 6 && _root.dstx(this,60))
   {
      _root.v_pant = 1;
      prsHf = 0;
      retFunc();
      ovr();
   }
   else if(_root.v_pant != 6 && _root.dstx(this,100,1))
   {
      _root.fce.fceOn("ptf",null,1,10,null,"noRld");
      _root.v_pant = 99;
      _root.fukusOff0.fukusOff.offStart("pantOff");
      rst();
      rls();
      ovr();
   }
   if(!prsHf && _root.v_pant == 5 && _root.dsty(this,30))
   {
      _root.fce.fceOn("pt5",null,1,mmCf);
      _root.v_pant = 1;
      rst();
      ovr();
   }
   else if(!prsHf && _root.v_pant == 1 && _root.dsty(this,50))
   {
      _root.fce.fceOn("pth");
      _root.v_pant = 3;
      _root.main.fr.body0.pnst.rst();
      _root.main.fr.cos0.btm1ld0.btm1ld.btm1.rst();
      eval(LegOp).mvMm();
      rst();
   }
   else if(!prsHf && _root.v_pant == 7 && _root.dsty(this,50))
   {
      _root.fce.fceOn("cmOff1");
      _root.v_pant = 3;
      _root.main.fr.body0.pnst.rst();
      _root.main.fr.cos0.btm1ld0.btm1ld.btm1.rst();
      eval(LegOp).mvMm();
      rst();
   }
   else if(!prsHf && _root.v_pant == 3 && _root.dsty(this,60))
   {
      _root.fce.fceOn("ptf",null,1,10);
      _root.v_pant = 4;
      rst();
   }
   else if(prsHf && _root.v_pant == 4 && _root.dsty(this,60))
   {
      _root.v_pant = 3;
      retFunc();
   }
   else if(prsHf && _root.v_pant == 3 && _root.dsty(this,50))
   {
      _root.v_pant = 1;
      retFunc();
   }
   else if(!prsHf && _root.v_pant == 4 && _root.dsty(this,100,1))
   {
      _root.fce.fceOn("ptf",null,1,10,0,"noRld");
      _root.v_pant = 99;
      _root.fukusOff0.fukusOff.offStart("pantOff");
      rst();
      rls();
      ovr();
   }
   else if(!prsHf && (_root.v_pant == 1 || _root.v_pant == 7) && !_root.v_insert && _root.dsty(this,-30))
   {
      _root.fce.fceOn("pt5");
      _root.v_pant = 5;
      rst();
      mmCf = eval(LegOp)._currentframe;
      ovr();
   }
   else if(!prsHf && _root.v_pant == 3 && _root.dsty(this,-50))
   {
      _root.v_pant = 1;
      retFunc();
   }
   else if(!prsHf && _root.v_pant == 4 && _root.dsty(this,-60))
   {
      _root.v_pant = 3;
      retFunc();
   }
   else if(prsHf && _root.v_pant == 1 && _root.dsty(this,-50))
   {
      _root.fce.fceOn("pth");
      _root.v_pant = 3;
      rst();
   }
   else if(prsHf && _root.v_pant == 3 && _root.dsty(this,-60))
   {
      _root.fce.fceOn("ptf",null,1,10);
      _root.v_pant = 4;
      rst();
   }
   else if(_root.v_pant == 6 && _root.dsty(this,-100))
   {
      _root.fce.fceOn("ptf",null,1,10,0,"noRld");
      _root.v_pant = 99;
      _root.fukusOff0.fukusOff.offStart("pantOff");
      rst();
      rls();
      ovr();
   }
   else if(prsHf && _root.v_pant == 4 && _root.dsty(this,-100))
   {
      _root.fce.fceOn("ptf",null,1,10,0,"noRld");
      _root.v_pant = 99;
      _root.fukusOff0.fukusOff.offStart("pantOff");
      rst();
      rls();
      ovr();
   }
}
function prsS()
{
   _root.prsFunc(this,0,null,"monS");
   if(_root.v_pant < 4)
   {
      _root.fcl.fclOn("Rdn","def",_root.tchVo(1,1,1,2),0,5);
   }
   else
   {
      _root.fcl.fclOn("Ldn","def",_root.tchVo0(),0,5);
   }
   eval(LegOp).mhPtOp.chgHand();
}
function rlsS()
{
   if(rf)
   {
      _root.fcl.fclOn(null,null,null,-1,-1,1,10,1,20);
   }
   _root.handCur.fxCurRls(eval(LegOp).mhPtOp);
   _root.prsFunc(this,1,null,"monS");
}
function ovrS()
{
   if(_root.v_pant == 7)
   {
      _root.guide.gdOn("rep2R");
   }
   else
   {
      _root.guide.gdOn("slideL");
   }
}
function sldPant()
{
   if(_root.v_pant == 1 && _root.dstx(this,-30))
   {
      _root.fce.fceOn("ptf",null,1,7);
      _root.v_pant = 7;
      rst();
      ovrS();
   }
   else if(_root.v_pant == 7 && _root.dstx(this,30))
   {
      _root.fce.fceOn("ret1");
      _root.v_pant = 1;
      rst();
      ovrS();
   }
}
Upr = "_root.main.fr.legOp.ptOpUp";
Pant6 = "_root.main.fr.legOp.momos.momoL.pantOpSide";
C71top = "_root.main.fr.cos0.brald.bra.ttop";
LegOp = "_root.main.fr.legOp";
rst();
this.onPress = function()
{
   if(_root.jdgPt() != -1)
   {
      prs();
   }
};
this.onRelease = function()
{
   if(_root.jdgPt() != -1)
   {
      rls();
   }
};
this.onReleaseOutside = function()
{
   if(_root.jdgPt() != -1)
   {
      rls();
   }
};
this.onRollOver = function()
{
   ovr();
};
this.onMouseMove = function()
{
   if(mon)
   {
      chgPant();
   }
   else if(monS)
   {
      sldPant();
   }
};
