function rst()
{
   gotoAndStop("rld");
}
function chgStg()
{
   var _loc2_ = [15,16,17,18,19,20,21,29,30,31,33,34,35,37,39,40,61,52,53,54,59];
   if(_root.aryPos(_loc2_,_root.sys_so.data["stg" + _root.v_cst]) != null)
   {
      gotoAndStop("s" + _root.sys_so.data["stg" + _root.v_cst]);
   }
   else
   {
      gotoAndStop("def");
   }
   var _loc3_;
   if(_root.sys_so.data["stg" + _root.v_cst] > 100)
   {
      _loc3_ = 255 - (_root.sys_so.data["stg" + _root.v_cst] - 101) * 63;
      _root.pntCol(backBtn,[_loc3_,_loc3_,_loc3_]);
   }
   else
   {
      _root.pntCol(backBtn,[0,0,0]);
   }
   rstChain();
   chgStgLght();
   _root.finder.rst();
   _root.sunBeam.gotoAndStop("def");
   _root.v_cold = _root.sys_so.data["stg" + _root.v_cst] != 37 ? null : 1;
}
function chgStgLght()
{
   var _loc2_;
   if(_root.sys_so.data.sv_stgLght)
   {
      if(_root.aryPos([31,34],_root.sys_so.data["stg" + _root.v_cst]) != null)
      {
         _loc2_ = [255,235,190];
      }
      else if(_root.aryPos([2,5,8,13,16,23,40,42,50,53,56],_root.sys_so.data["stg" + _root.v_cst]) != null)
      {
         _loc2_ = [255,213,171];
      }
      else if(_root.aryPos([3,6,9,11,14,17,19,21,24,36,43,54,58,60,61],_root.sys_so.data["stg" + _root.v_cst]) != null)
      {
         _loc2_ = [195,215,255];
      }
      else if(_root.sys_so.data["stg" + _root.v_cst] == 32)
      {
         _loc2_ = [205,205,195];
      }
      if(_loc2_)
      {
         _root.chgCol(_root.main,_loc2_[0],_loc2_[1],_loc2_[2]);
         _root.chgCol(hangSwitch,_loc2_[0],_loc2_[1],_loc2_[2]);
         _root.chgCol(_root.fukusOff0,_loc2_[0],_loc2_[1],_loc2_[2]);
         _root.chgCol(_root.chinko0,_loc2_[0],_loc2_[1],_loc2_[2]);
      }
      else
      {
         _root.rstCol(_root.main);
         _root.rstCol(hangSwitch);
         _root.rstCol(_root.fukusOff0);
         _root.rstCol(_root.chinko0);
      }
   }
   else
   {
      _root.rstCol(_root.main);
      _root.rstCol(hangSwitch);
      _root.rstCol(_root.fukusOff0);
      _root.rstCol(_root.chinko0);
   }
}
function aniBg()
{
   if(_root.sys_so.data.v_stgGrp[_root.aryPos(_root.sys_so.data.v_stgGrp,_root.sys_so.data["stg" + _root.v_cst])][2])
   {
      return true;
   }
}
function rstChain()
{
   _root.v_chain = _root.sys_so.data.v_stgGrp[_root.aryPos(_root.sys_so.data.v_stgGrp,_root.sys_so.data["stg" + _root.v_cst])][1];
   hangSwitch.rst();
   hangSwitch.hangSwitch01.rst();
   _root.main.fr.body0.arms.chainL.chain1.rst();
   _root.main.fr.body0.arms.chainR.chain1.rst();
   _root.main.fr.body0.arms.armL.cuff.rst();
   _root.main.fr.body0.arms.armR.cuff.rst();
   _root.main.fr.body0.arms.armL.cuffB.rst();
   _root.main.fr.body0.arms.armR.cuffB.rst();
   _root.main.fr.legOp.chainL.chain1.rst();
   _root.main.fr.legOp.chainR.chain1.rst();
   _root.main.fr.legOp.momos.momoL.chainLeg.rst();
   _root.main.fr.legOp.momos.momoR.chainLeg.rst();
   _root.main.bk.bodyTop.bodyTop1.chain.chainL.chain1.rst();
   _root.main.bk.bodyTop.bodyTop1.chain.chainR.chain1.rst();
   _root.main.bk.bodyTop.bodyTop1.chain.cuffL.cuff1.rst();
   _root.main.bk.bodyTop.bodyTop1.chain.cuffR.cuff1.rst();
   _root.main.bk.bodyTop.bodyTop1.arms.armL.cuffB.rst();
   _root.main.bk.bodyTop.bodyTop1.arms.armR.cuffB.rst();
   _root.main.bk.bodyBtm.bodyBtm1.chainL.chain1.rst();
   _root.main.bk.bodyBtm.bodyBtm1.chainR.chain1.rst();
   _root.main.bk.bodyBtm.bodyBtm1.legBkL.chainLeg.rst();
   _root.main.bk.bodyBtm.bodyBtm1.legBkR.chainLeg.rst();
}
_root.bgLstnr.onLoadComplete = function()
{
   if(_root.sys_so.data["stg" + _root.v_cst] > 100)
   {
      gotoAndStop("cbg");
      play();
   }
};
backBtn.useHandCursor = false;
