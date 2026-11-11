_root.fce.chgFace("dn");
_root.fce.fceOn("def");
_root.cap.playVo("def");
_root.fce.chgEl("half");
_root.fce.chgPo();
_root.fce.eyeSp();
if(_root.v_emo == 0)
{
   _root.fce.chgTear("on");
}
_root.fce.chgYodare("R",[null,null,"on"]);
_root.hme.hme(3,1);
_root.lmL.lmL("lg",1,1,0,1);
_root.lmF.lmF("ft",1,1,0,1);
eval(LegOp).nkds.ctrlNkds("def");
eval(LegOp).bloodF.ctrl("on");
_root.v_nure = _root.v_emo < 2 ? _root.v_nure : 2;
eval(LegOp).manNure.rst();
gotoAndStop("insEnd");
