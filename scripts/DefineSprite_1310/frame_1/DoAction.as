function rst()
{
   if(_root.v_pant == 99)
   {
      gotoAndStop("off");
   }
   else
   {
      gotoAndStop("def");
   }
   _root.main.fr.fukuBacks.pant.waBk.rst();
}
function prs()
{
   _root.fcl.fclOn("Rdn","def",_root.tchVo0(),0,5);
   _root.handCur.fxCurPrs(myHand,"R");
   _root.prsFunc(this);
}
function rls()
{
   if(rf)
   {
      _root.fcl.fclOn(null,null,null,-1,-1,1,10,1,20);
   }
   _root.handCur.fxCurRls(myHand);
   _root.prsFunc(this,1);
}
function ovr()
{
   _root.guide.gdOn("pulldn");
}
function funOff()
{
   _root.fce.fceOn("ptf",null,1,10);
   if(_root.v_pant == 1 || _root.v_pant == 7)
   {
      _root.v_pant = 99;
      _parent.pantOp1.rst("pt1off",1);
   }
   else if(_root.v_pant == 6 || _root.v_pant == 8)
   {
      _root.v_pant = 99;
      _parent.pantOp1.rst("pt8off",1);
   }
   else
   {
      _root.v_pant = 99;
      _parent.pantOp1.rst("pt2off",1);
   }
}
rst();
_root.colCos(this,"pant_1");
this.onMouseMove = function()
{
   if(mon && _ymouse > py + 20)
   {
      rls();
      _root.fcl.fclOn(null,"def",[["ya","axx","haxq"],[],["a","haxq","sirent01","??01"]],13,15,0,5,-1,20,null,0,0,"def");
      gotoAndStop("offStart");
      play();
      _root.main.fr.fukuBacks.pant.waBk.gotoAndPlay("bkStart");
      _root.hideBtn.hide();
      _root.ctrl.stopBtns();
   }
};
