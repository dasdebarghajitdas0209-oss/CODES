function prs()
{
   mon = 1;
   _root.fce.fceOn("man1",null,0,1,_root.jdgTng("Anl"));
   rubAnl();
   chgAutoMode();
   _root.main.fr.legOp.nkds.ctrlNkds("ndErase");
   _root.clkLk.clOn(this,"Anl",null,"single",null,curAreaI);
}
function rubAnl()
{
   if(_root.sys_so.data.v_handAnl == 10)
   {
      var hrx = 2.2;
      var hrot = 160;
   }
   else if(_root.sys_so.data.v_handAnl == 11)
   {
      var hrx = -1.8;
   }
   else if(_root.sys_so.data.v_handAnl == 12)
   {
      var hrx = 2;
   }
   if(_root.v_pant == 1)
   {
      curAreaAn.startCur(eval(LegOp)["myHandManR" + _root.sys_so.data.v_handAnl],"R",1,"amo",null,hrx,0,0,0,0,0,0,hrot,eval(LegOp).fingerAn,-2,0,3);
      _root.tgt.startTgt(anlTar,this,eval(LegOp)["myHandManR" + _root.sys_so.data.v_handAnl]);
   }
   else
   {
      curAreaAn.startCur(eval(LegOp)["myHandMan2R" + _root.sys_so.data.v_handAnl],"R",1,"amo",null,hrx,0,0,0,0,0,0,hrot);
      _root.tgt.startTgt(anlTar,this,eval(LegOp)["myHandMan2R" + _root.sys_so.data.v_handAnl]);
   }
}
function chgAutoMode()
{
   var _loc2_;
   var _loc3_;
   var _loc4_;
   if(_root.v_tmode == 2)
   {
      _loc2_ = _root.sys_so.data.v_ptnAnl;
      _loc3_ = [8,15,30,60,90];
      _loc4_ = [5,3.3,2.2,1.3,1];
      curAreaAn.startAmo(_loc2_,100,100,_loc3_[_root.sys_so.data.v_spdAnl],_loc4_[_root.sys_so.data.v_spdAnl]);
   }
}
function chgMyHand()
{
   if(mon)
   {
      rubAnl();
      if(_root.jdgTng("Anl"))
      {
         _root.fce.fceOn("man1",null,0,1,1);
      }
   }
}
function chgSpd()
{
   if(mon)
   {
      chgAutoMode();
   }
}
function chgPtn()
{
   if(mon)
   {
      chgAutoMode();
   }
}
function rls()
{
   if(!_root.clkLk.clStat)
   {
      mon = null;
      _root.fce.man1.rls();
      curAreaAn.stopCur();
      _root.tgt.stopTgt();
      if(!_root.v_tmode)
      {
         _root.clkLk.clOff();
      }
   }
}
function ovr()
{
   _root.guide.gdOn("anal");
}
function tgtMove(s)
{
   gotoAndStop(s);
}
function tgtStop()
{
   gotoAndStop("def");
}
LegOp = "_root.main.fr.legOp";
gotoAndStop("def");
this.onMouseMove = function()
{
   if((mon || curAreaI.mon) && _root.v_tmode < 2)
   {
      _root.fce.man1.move1();
   }
};
this.onEnterFrame = function()
{
   if(mon && _root.v_tmode == 2)
   {
      if(_root.sys_so.data.v_spdAnl == 3)
      {
         _root.fce.man1.move2();
      }
      else if(_root.sys_so.data.v_spdAnl == 4)
      {
         _root.fce.man1.move3();
      }
      else
      {
         _root.fce.man1.move1();
      }
   }
};
