onClipEvent(enterFrame){
   if(_parent.insAct != 99)
   {
      pt++;
      if(pt == 1)
      {
         _root.fce.chgFace("dn");
      }
      else if(pt == 2)
      {
         _root.cap.playVo(["a","an","aha","haxq","fua","haaq","hoeq"],null,1);
         _root.fce.chgEl("def",null,null,1);
      }
      if(_root.endSnd)
      {
         ptr++;
         if(ptr == 5)
         {
            _root.cap.playVo(["ahaa","aaxx","haxx","nfu","nhaxx","uux","ahax","haux"],-1,1,null,"def",null,2);
            _root.fce.chgEl("shut2m",null,null,1);
            _root.hme.hme(1,2,0,8);
            _root.lmM.lmM("mmO",-1,2,8);
            if(_root.jdgClsLeg())
            {
               _root.lmL.lmL("lg",1,2,8);
            }
            _root.lmF.lmF("ft",1,2,8);
            _root.main.nure();
         }
      }
      if(_root.endSnd >= 2)
      {
         ptr2++;
         if(ptr2 == 30)
         {
            lpFrg = _root.sys_so.data.v_dschgLoop;
            ends = !lpFrg ? 3 : 2;
            _root.cap.playVo(["aaaa","ahaha","ahahax","haaa","ramee","ramedesu"],-1,1,null,"def",null,ends);
            _root.hme.hme(6,2);
            _root.lmM.lmM("mmO",-2,2);
            if(_root.jdgClsLeg())
            {
               _root.lmL.lmL("lg",2,2);
            }
            _root.lmF.lmF("ft",3,2,0,1);
            this.dschgLoopTime = _root.genRnd(80,180);
         }
         else if(lpFrg && ptr2 == dschgLoopTime)
         {
            _root.hme.hme(3,3);
            _root.lmM.lmM("mmO",0,3);
            _root.lmL.lmL("lg",0,3);
            _root.lmF.lmF("ft",0,3);
         }
         else if(lpFrg && ptr2 == dschgLoopTime + 30)
         {
            ptr = ptr2 = 0;
            _root.endSnd = 1;
         }
      }
   }
   if(_root.endSnd >= 3)
   {
      ptr3++;
      if(ptr3 == 20 - reduceTime)
      {
         _root.command.ctrl("off");
         eval(_parent.Dev).devFr1.chinQck.stp();
         _parent.vgnQckBase.stp();
      }
      else if(ptr3 == 40 - reduceTime)
      {
         _root.command.ctrl("off");
         _root.fce.chgFace("dn");
         _root.fce.chgEl("def",null,null,1);
         _root.hme.hme(3,3);
         _root.lmM.lmM("mmO",2,3);
         _root.lmL.lmL("lg",1,3,0,1);
         _root.lmF.lmF("ft",1,3,0,1);
      }
      else if(ptr3 == 65 - reduceTime)
      {
         _root.cap.playVo(["guxx","haxx","hyax","kuxx","nfu","nguxx","nhaxx","ahax","ahaux","haux","higux","nmux","xx"],-1,1,null,"def",null,4);
         _root.fce.chgEl("shut2m",null,null,1);
         _root.hme.hme(1,1);
         _root.lmM.lmM("mmO",-2,1,5);
         if(_root.jdgClsLeg())
         {
            _root.lmL.lmL("lg",2,1,5);
         }
         _root.lmF.lmF("ft",4,1,0,1);
      }
      else if(ptr3 == 80 - reduceTime)
      {
         _root.lmF.mvFg("close");
      }
   }
   if(_root.endSnd >= 4)
   {
      ptr4++;
      if(ptr4 == 10)
      {
         _root.cap.playVo(["i_iku","ikuiku","ikuuxx","sirent01"],-1,1,"haMove",null,null,4);
      }
      else if(ptr4 == 20)
      {
         _root.lmM.lmM("mmO",-1,1,3);
         if(_root.jdgClsLeg())
         {
            _root.lmL.lmL("lg",1,1,3);
         }
      }
      else if(ptr4 == 40)
      {
         _root.lmM.lmM("mmO",-1,1,3);
         if(_root.jdgClsLeg())
         {
            _root.lmL.lmL("lg",1,1,3);
         }
      }
      else if(ptr4 == 80)
      {
         _root.fce.chgEbx(null,null,null,-1,1,"up");
         _root.fce.eyeSp(1,1);
      }
      else if(ptr4 == 81)
      {
         _root.cap.playVo(_root.rtnExVoice(),-1,1,null,null,null,5,1);
         _root.hme.hme(6,2);
         _root.lmM.lmM("mmO",-3,2);
         _root.lmL.lmL("lg",3,2);
         _root.lmF.mvFg("return");
      }
      else if(ptr4 == 83)
      {
         _root.fce.chgEl("def",null,null,1);
      }
      else if(ptr4 == 84)
      {
         _root.fce.chgFace("fr");
         _root.fce.chgEbx("up2",null,null,null,1);
      }
      else if(ptr4 == 87)
      {
         _root.fce.chgFace("up");
      }
      else if(ptr4 == 88)
      {
         _root.fce.chgEbx(null,null,null,-1,1,null,"up2");
         _root.fce.eyeSp(1,1);
         _root.fce.chgYodare("L","onStart",1);
         _root.fce.chgManfu("spls",null,1);
      }
      else if(ptr4 == 113)
      {
         eval(_parent.LegOp).nkds.ctrlNkds("start");
         _root.fce.chgManfu("def",null,1);
      }
   }
   if(_root.endSnd >= 5)
   {
      ptr5++;
      if(ptr5 == lst)
      {
         _root.fce.chgFace("fr");
         _root.fce.chgMo("open3",null,null,1);
         _root.hme.hme(3,4);
         _root.lmM.lmM("mmO",3,4);
         _root.lmL.lmL("lg",1,4,0,1);
         _root.lmF.lmF("ft",1,4,0,1);
      }
      else if(ptr5 == lst + 1)
      {
         _root.fce.chgEbx("up",null,null,null,1);
      }
      else if(ptr5 == lst + 3)
      {
         _root.fce.chgFace("dn");
         _root.fce.chgMo("half",null,null,1);
      }
      else if(ptr5 == lst + 4)
      {
         _root.fce.chgEbx(null,null,null,-1,1,"up2");
      }
      else if(ptr5 == lst + 30)
      {
         _root.fce.chgEl("def",null,null,1);
      }
      else if(ptr5 == lst + 35)
      {
         _root.fce.chgEbx(null,null,null,-1,1,"up");
      }
      else if(ptr5 == lst + 37)
      {
         _root.fce.chgEbx(null,null,null,-1,1,"def");
         _parent.gotoAndStop("nakadasiEnd");
      }
   }
}
