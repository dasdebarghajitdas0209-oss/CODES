function prs(sd)
{
   mon = 1;
   py = _ymouse;
   if(sd == "L")
   {
      _root.fce.chgEbx("L","def","Rdn",-1,0,null,null);
   }
   else
   {
      _root.fce.chgEbx("R","Rdn","def",-1,0,null,null);
   }
   _root.hme.stopHme();
   _root.handCur.fxCurPrs(armL.myHand,"L");
   _root.handCur.fxCurPrs(armR.myHand,"R");
}
function rls()
{
   mon = 0;
   _root.cap.ovrSnd();
   _root.fcl.fclOn(null,null,null,-1,-1,1,5,10,20);
   _root.handCur.fxCurRls(armL.myHand,armR.myHand);
}
function ovr()
{
   _root.guide.gdOn("up&dn","arms");
}
function udArm()
{
   if(_ymouse > py + 3 && _currentframe < _totalframes)
   {
      mvArm(1,0,0,0,1);
      armAc();
   }
   else if(_ymouse < py - 3 && _currentframe > 1)
   {
      mvArm(-1,0,0,0,1);
      armAc();
   }
}
function armAc()
{
   _root.cap.ovrSnd(1,50);
   _root.fcl.fclOn(null,["shut2","def","def"],[["n","ux"],["a","haxq"],["sirent01","??01"]],2,3);
   py = _ymouse;
}
this.onMouseMove = function()
{
   if(mon)
   {
      udArm();
   }
};
