if(_root.v_emo == 0)
{
   va = ["gux","kuxx","nfu","nguxx","nnx","uxx","nmux","xx"];
}
else if(_root.v_emo == 1)
{
   va = _root.v_insTime ? ["aa","ahaa","nfuz"] : ["nfu","ux"];
   elv = _root.v_insTime ? "shut1" : "shut2m";
   met = 5;
}
else
{
   va = ["aa","an","aha","ahaa","nfuz"];
}
_root.cap.playVo(va,met);
_root.fce.chgEl(["shut2m",elv,"shut1"]);
_root.hme.hme(2,1,0,10);
_root.lmM.lmM("mmO",-2,1,10);
if(_root.lmM.jdgClsMm())
{
   _root.lmL.lmL("lg",2,1,10);
}
_root.lmF.lmF("ft",2,1,10);
