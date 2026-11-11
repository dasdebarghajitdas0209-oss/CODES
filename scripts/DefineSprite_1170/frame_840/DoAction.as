moveCount++;
_root.main.mainMove(-30);
_root.main.fr.body0.arms.mvArm(5,0,1);
_root.main.fr.bust0.bust1.yure0("wdl2",null,"dl2");
_root.main.fr.cos0.yureFb("dl1");
if(alwRes("kis"))
{
   _root.fce.chgFace("dn");
   if(_root.command.com1.dischgIn.noRes || _root.v_emo <= 1)
   {
      _root.main.fr.body0.arms.armL.hand.chgHand(1,1);
      _root.main.fr.body0.arms.armR.hand.chgHand(1,1);
      _root.main.fr.legOp.suneL.mvLg(3,1);
      _root.main.fr.legOp.suneR.mvLg(3,1);
      _root.lmF.mvFg("clsEnd",1);
   }
   else if(_root.v_emo >= 2)
   {
      _root.main.fr.body0.arms.armL.hand.chgHand(6,1);
      _root.main.fr.body0.arms.armR.hand.chgHand(6,1);
      _root.main.fr.legOp.suneL.mvLg(4,1);
      _root.main.fr.legOp.suneR.mvLg(4,1);
   }
   _root.main.fr.legOp.mvMm(3);
   _root.main.fr.legOp.suneL.sune1.mvFt(4,1);
   _root.main.fr.legOp.suneR.sune1.mvFt(4,1);
}
_root.main.chgBnyEar(1,1);
