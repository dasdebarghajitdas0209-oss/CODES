if(_root.v_emo == 0)
{
   va = ["aaaaaxx","haaanxx","iyaaaSx","nnnnxx","uuuuuxx"];
}
else if(_root.v_emo == 1)
{
   va = _root.v_insTime ? ["ahahax","ahaux"] : ["aaanxx","haaanxx","ahaux"];
}
else
{
   va = ["guuuuxx","aaaaaSx","nfuuuEx","uuuuuxx04_s","uuuuuxx05_s"];
   _root.fce.chgEl("def");
}
_root.cap.playVo(va);
