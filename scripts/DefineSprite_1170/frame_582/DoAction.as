if(_root.v_emo == 0)
{
   va = ["guxx","gix","kuxx","nfu","nguxx","uxx","hiix","haux","higux","nmux","xx"];
}
else if(_root.v_emo == 1)
{
   if(!_root.v_insTime)
   {
      va = !_root.bdy_so.data["c" + _root.v_cst + "vgny"] ? ["nfu","nnx","uux","ux","nmux","xx01_s","xx02_s"] : ["itax","nnx","uux","haux","nmux","xx01_s","xx02_s"];
   }
   else
   {
      va = ["aa","ahaa","ahaha","nfu","ahax"];
   }
}
else
{
   va = ["ahahax","ahax","guxx","kuuxx","nguxx","uxx","haux","nmux","xx"];
}
_root.cap.playVo(va);
_root.fce.chgEl("shut2m");
_root.hme.hme(2,1,1);
_root.lmM.lmM("mmO",-2,2,10);
_root.lmL.lmL("lg",2,2,10);
