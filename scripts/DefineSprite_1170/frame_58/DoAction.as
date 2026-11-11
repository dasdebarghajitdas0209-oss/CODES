if(_root.v_emo == 0)
{
   va = _root.v_insTime ? ["axx","aaxq","haxx","hyax","kyaxx","chox","hix","xx"] : ["exq","haxq","nanixq","ya","yaxq"];
}
else if(_root.v_emo == 1)
{
   va = _root.v_insTime ? ["a","axx","haxq"] : ["a","axx","haxq","exq"];
}
else
{
   va = ["a","aha","an","haxq"];
}
_root.fcl.fclOn(null,"double",va,0,1,null,-1,-1,-1,null,0,1);
if(_root.v_emo == 0 && _root.v_insTime)
{
   _root.fce.eyeSp(1);
}
_root.hme.hme(4,2,1,10);
_root.lmF.lmF("ft",1,2,12);
