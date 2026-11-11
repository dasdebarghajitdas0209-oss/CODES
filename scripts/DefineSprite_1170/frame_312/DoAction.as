if(_root.cap.cap1.decLg(50))
{
   if(_root.bdy_so.data["c" + _root.v_cst + "vgny"])
   {
      _root.fcl.fclOn(null,"shut2m","itax",0,1,null,-1,-1,-1,null,0,1);
   }
   else
   {
      _root.fcl.fclOn(null,"shut2m",["gux","nguxx","uxx","gix","higux","hix","hiix","nmux","xx"],0,1,null,-1,-1,-1,null,0,1);
   }
}
else
{
   _root.fcl.fclOn(null,"def",["nonono","waitwait"],0,1,null,-1,-1,-1,null,0,1);
}
_root.hme.hme(1,1);
_root.lmM.lmM("mmO",-2,1,15);
