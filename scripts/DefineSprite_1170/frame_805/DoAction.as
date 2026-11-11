_root.main.mainMove(-18);
_root.main.fr.body0.arms.mvArm(4,0,1);
_root.main.fr.bust0.bust1.yure0("dd1");
_root.main.fr.cos0.yureFb("dd1");
if(alwRes("kis"))
{
   if(_root.command.com1.dischgIn.noRes || _root.v_emo == 1)
   {
      hdD = 2;
   }
   else if(_root.v_emo >= 2)
   {
      hdD = 4;
   }
   else
   {
      hdD = 1;
   }
   _root.main.fr.body0.arms.armL.hand.chgHand(hdD,1);
   _root.main.fr.body0.arms.armR.hand.chgHand(hdD,1);
   _root.main.fr.legOp.mvMm(2);
   if(_root.jdgClsLeg())
   {
      _root.main.fr.legOp.suneL.mvLg(2);
      _root.main.fr.legOp.suneR.mvLg(2);
   }
   if(_root.command.com1.dischgIn.noRes || _root.v_emo <= 1)
   {
      _root.main.fr.legOp.suneL.sune1.mvFt(4,1);
      _root.main.fr.legOp.suneR.sune1.mvFt(4,1);
      _root.lmF.mvFg("clsEnd",1);
   }
   else if(_root.v_emo >= 2)
   {
      _root.main.fr.legOp.suneL.sune1.mvFt(3,1);
      _root.main.fr.legOp.suneR.sune1.mvFt(3,1);
   }
}
