function rst(f2p, off)
{
   if(!_root.v_insert && _root.v_pant > 1 && _root.v_pant <= 4)
   {
      gotoAndStop("pt2");
   }
   else if(_root.v_insert && _root.v_pant == 1)
   {
      _root.v_pant = 7;
      gotoAndStop("pt7");
   }
   else
   {
      gotoAndStop("pt" + _root.v_pant);
   }
   eval(Fund2).rst(f2p,off);
   eval(LegOp).ptOpUp.rst();
   _parent.fundTie.rst();
   eval(LegOp).momoMask.mmMask();
   _root.main.fr.legOp.manBtn.rst();
   _root.main.fr.legOp.anlBtn.rst();
   _parent.sldBtnHg.rst();
   disBtn();
   _root.main.nureRst();
   _root.rstXY(this);
}
function prs()
{
   _root.fcl.fclOn(null,"def",_root.tchVo(1,1,1,2),0,5);
   if(_root.v_pant == 6)
   {
      _root.fce.chgEbs("Ldn");
      var handsd = "L";
   }
   else
   {
      _root.fce.chgEbs("dnx");
      var handsd = "R";
   }
   _root.handCur.fxCurPrs(myHand,handsd);
   _root.handCur.fxCurPrs(eval(Fund2).myHand,"R");
   _root.prsFunc(this);
}
function rls()
{
   if(mon)
   {
      if(rf)
      {
         _root.fcl.fclOn(null,null,null,-1,-1,1,10,1,20);
      }
      if((_root.v_pant == 2 || _root.v_pant == 8) && _root.jdgDc())
      {
         _root.v_pant = 1;
         _root.fce.fceOn("ret1");
         rst();
      }
      else if(_root.v_pant == 4)
      {
         _root.v_pant = 2;
         rst("mkrDn");
         if(_root.v_btmF == 2)
         {
            _root.v_btmF = 1;
            eval(Md).gotoAndPlay("turn");
         }
         _root.fce.fceOn("ret1");
      }
      else if(_root.v_pant == 5)
      {
         _root.v_pant = 1;
         rst();
         _root.fce.fceOn("pt5",null,1,mmCf);
      }
      _root.handCur.fxCurRls(myHand,eval(Fund2).myHand);
      _root.prsFunc(this,1);
   }
}
function ovr()
{
   if(_root.v_pant == 5 || _root.v_pant == 99)
   {
      _root.guide.gdOn("def");
   }
   else if(_root.v_pant == 2)
   {
      _root.guide.gdOn("fundOp2");
   }
   else if(_root.v_pant == 7 && _root.v_insert)
   {
      _root.guide.gdOn("fund7i");
   }
   else
   {
      _root.guide.gdOn("fund" + _root.v_pant);
   }
}
function retFunc()
{
   _root.fce.fceOn("ret1");
   rst();
}
function disBtn(f)
{
   if(f || _root.v_btmF == 1 && (_root.v_pant == 1 || _root.v_pant == 7))
   {
      this.enabled = false;
   }
   else
   {
      this.enabled = true;
   }
}
function myHandOn()
{
   var _loc3_ = _root.v_pant != 6 ? "R" : "L";
   _root.handCur.handShow(myHand,_loc3_,this.mon);
   _root.colCos(myHand,"pant_0",1);
}
function chgFund()
{
   if(_root.v_pant == 1 && _root.dstx(this,-30))
   {
      _root.fce.fceOn("ptf",null,1,10);
      _root.v_pant = 7;
      rst();
      ovr();
   }
   else if(_root.v_pant == 7 && _root.dstx(this,-40))
   {
      _root.fce.fceOn("ptf",null,1,0,0,"noRld");
      _root.v_pant = 8;
      rst();
      ovr();
   }
   else if(_root.v_pant == 2 && _root.dstx(this,-40))
   {
      _root.fce.fceOn("ptf",null,1,10,0,"noRld");
      _root.v_pant = 8;
      rst();
      ovr();
   }
   else if(_root.v_pant == 8 && _root.dstx(this,-50))
   {
      _root.fce.fceOn("ptf","L",1,0,0,"noRld");
      _root.v_pant = 6;
      rst();
      ovr();
   }
   else if(_root.v_pant == 4 && _root.dstx(this,-40))
   {
      if(_root.v_btmF == 2)
      {
         _root.v_btmF = 1;
         eval(Md).gotoAndPlay("turn");
         _root.fce.fceOn("ret1");
      }
      _root.v_pant = 6;
      rst();
      ovr();
   }
   else if(_root.v_pant == 7 && !_root.v_insert && _root.dstx(this,30))
   {
      _root.v_pant = 1;
      _root.fce.fceOn("ret1");
      rst();
      ovr();
   }
   else if(_root.v_pant == 6 && _root.dstx(this,40))
   {
      _root.v_pant = 1;
      _root.fce.fceOn("ret1");
      rst();
      if(_root.v_btmF == 1)
      {
         rls();
      }
      ovr();
   }
   else if(_root.v_pant == 8 && !_root.v_insert && _root.dstx(this,40))
   {
      _root.v_pant = 2;
      _root.fce.fceOn("ret1");
      rst("pt2start2");
      ovr();
   }
   else if(_root.v_pant != 5 && _root.dstx(this,100,1))
   {
      _root.fce.fceOn("ptf",null,1,10,0,"noRld");
      _root.v_pant = 99;
      _root.fukusOff0.fukusOff.offStart("pantOff");
      rst();
      ovr();
      rls();
   }
   if((_root.v_pant == 1 || _root.v_pant == 7) && !_root.v_insert && _root.dsty(this,60))
   {
      _root.fce.fceOn("pth");
      _root.v_pant = 2;
      rst("pt2start");
      rls();
      ovr();
   }
   else if(_root.v_pant == 5 && _root.dsty(this,30))
   {
      _root.fce.fceOn("pt5",null,1,mmCf);
      _root.v_pant = 1;
      rst();
      ovr();
   }
   else if(_root.v_pant == 4 && _root.dsty(this,40))
   {
      _root.v_pant = 2;
      _root.fce.fceOn("ret1");
      if(_root.v_btmF == 2)
      {
         _root.v_btmF = 1;
         eval(Md).gotoAndPlay("turn");
      }
      rst("mkrDn");
      _root.rstXY(this);
      ovr();
   }
   else if(_root.v_pant == 6 && _root.dsty(this,40))
   {
      _root.v_pant = 8;
      _root.fcl.fclOn("Ldn","def","noSnd",0,0,0,5,10,20);
      rst();
      ovr();
   }
   else if(_root.v_pant == 2 && _root.dsty(this,100,1))
   {
      _root.fce.fceOn("ptf",null,1,15);
      _root.v_pant = 99;
      rst("pt2off",1);
      rls();
      ovr();
   }
   else if(_root.v_pant == 7 && _root.v_insert && _root.dsty(this,100,1))
   {
      _root.v_pant = 99;
      rst("pt1off",1);
      rls();
      ovr();
   }
   else if(_root.v_pant == 8 && _root.dsty(this,100,1))
   {
      _root.fce.fceOn("ptf",null,1,0,0,"noRld");
      _root.v_pant = 99;
      rst("pt8off",1);
      rls();
      ovr();
   }
   else if((_root.v_pant == 1 || _root.v_pant == 7) && !_root.v_insert && _root.dsty(this,-30))
   {
      _root.fce.fceOn("pt5");
      _root.v_pant = 5;
      rst();
      mmCf = eval(LegOp)._currentframe;
      ovr();
   }
   else if(_root.v_pant == 2 && _root.dsty(this,-40))
   {
      _root.v_pant = 4;
      if(_root.v_btmF == 1)
      {
         _root.v_btmF = 2;
         eval(Md).gotoAndPlay("upStart");
      }
      _root.fce.fceOn("ptf",null,null,10);
      rst("mkrUp");
      _root.rstXY(this);
      ovr();
   }
   else if(_root.v_pant == 8 && _root.dsty(this,-40))
   {
      _root.fce.fceOn("ptf","L",1,0,0,"noRld");
      _root.v_pant = 6;
      rst();
      ovr();
   }
}
Fund2 = "_root.main.fr.legOp.ptOpUp.fdOpUp.fund2";
Md = "_root.main.fr.legOp.btm1hgld0.btm1hgld.btm1hg.btmOp2";
LegOp = "_root.main.fr.legOp";
rst();
_root.colCos(this,"pant_0");
this.onPress = function()
{
   prs();
};
this.onRelease = function()
{
   rls();
};
this.onReleaseOutside = function()
{
   rls();
};
this.onRollOver = function()
{
   ovr();
};
this.onMouseMove = function()
{
   if(mon)
   {
      chgFund();
   }
};
