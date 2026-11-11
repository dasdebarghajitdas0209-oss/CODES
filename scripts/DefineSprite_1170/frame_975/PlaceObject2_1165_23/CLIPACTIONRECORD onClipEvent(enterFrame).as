onClipEvent(enterFrame){
   if(_parent.insAct != 99)
   {
      pt++;
      if(pt == 1)
      {
         _root.cap.playVo([["iyaaaxx","i-yaxx","dameexx","aaxx","haxx","hyax","hyaxx","xx"],["aaxx","dameexx","haxx","hyax","kyaxx","ahax01_s","ahax02_s","xx"]],-1,1,null,"def");
      }
      if(_root.endSnd)
      {
         ptr++;
         if(ptr == 10)
         {
            voa = _parent.inDisLoop ? ["nakawadame","nakawaiya","chotmatte","aaxx","dameexx","iyaaaxx","kyaaaxx"] : [["nakawadame","nakawaiya","chotmatte"],["nakawadame"]];
            if(lpFrg)
            {
               _root.cap.playVo(voa,20,1,null,"def","open3",1);
               _parent.inDisLoop = 1;
            }
            else
            {
               _root.cap.playVo(voa,-1,1,null,"def",null,2);
            }
            _root.fce.chgManfu("spls",null,1);
         }
         else if(ptr == 25)
         {
            _root.fce.chgEl("shut2m",null,null,1);
            _root.fce.chgManfu("def",null,1);
            _root.hme.hme(1,1);
            _root.lmM.lmM("mmO",-2,2);
            if(_root.jdgClsLeg())
            {
               _root.lmL.lmL("lg",2,2);
            }
         }
         else if(ptr == 32)
         {
            _root.lmF.mvFg("close");
            this.dschgLoopTime = _root.genRnd(70,150);
         }
         else if(lpFrg && ptr == dschgLoopTime)
         {
            _root.fce.chgEl("def",null,null,1);
            _root.hme.hme(6,1);
            _root.lmM.lmM("mmO",0,2);
            _root.lmF.mvFg("open");
            if(_root.jdgClsLeg())
            {
               _root.lmL.lmL("lg",0,2);
            }
            _parent.gotoAndPlay("dschgLoop" + _root.v_emo);
         }
      }
   }
   if(_root.endSnd >= 2)
   {
      ptr2++;
      if(ptr2 == 1)
      {
         _root.command.ctrl("off");
         eval(_parent.Dev).devFr1.chinQck.stp();
         _parent.vgnQckBase.stp();
      }
      else if(ptr2 == 20)
      {
         _root.command.ctrl("off");
         _root.fce.chgFace("dn");
         _root.fce.chgEl("def",null,null,1);
         _root.fce.chgMo("open2m",null,null,1);
         _root.hme.hme(3,3);
         _root.lmM.lmM("mmO",0,3);
         _root.lmL.lmL("lg",1,3,0,1);
         _root.lmF.lmF("ft",1,3,0,1);
      }
      else if(ptr2 == 60 - reduceTime)
      {
         _root.cap.playVo([["guxx","nguxx","uxx","nhaxx","gix","higux","hix","nmux","xx"],["ahaa","ahaux","ahax"]],-1,1,null,null,null,2);
         _root.fce.chgEl(["shut2m","shut1"],null,null,1);
         _root.hme.hme(2,1);
         _root.lmM.lmM("mmO",-1,1,5);
         if(_root.jdgClsLeg())
         {
            _root.lmL.lmL("lg",1,1,5);
         }
         _root.lmF.lmF("ft",1,1);
      }
      else if(ptr2 == 100 - reduceTime)
      {
         _root.cap.playVo([["iyaaaEx","dameExt","aaaaaSx"],["cumLv"]],-1,1,null,null,null,3);
         _root.hme.hme(1,2);
         _root.lmM.lmM("mmO",-3,2);
         if(_root.jdgClsLeg())
         {
            _root.lmL.lmL("lg",3,2);
         }
         _root.lmF.lmF("ft",4,2,0,1);
      }
      else if(ptr2 == 103 - reduceTime)
      {
         _root.fce.trnFace();
      }
      else if(ptr2 == 105 - reduceTime)
      {
         _root.lmF.mvFg("close");
      }
   }
   if(_root.endSnd >= 3)
   {
      ptr3++;
      if(ptr3 == 30)
      {
         eval(_parent.LegOp).nkds.ctrlNkds("start");
      }
      else if(ptr3 == 90)
      {
         _root.fce.chgMo("half",null,null,1);
      }
      else if(ptr3 == 140)
      {
         _root.cap.playVo("sirent01",-1,1,"def",null,null,3);
      }
      else if(ptr3 == 200)
      {
         _root.cap.playVo([["aa","haaa","uux","iyaa","uuu"],["aaaa","haaa","dame"]],null,1,null,null,null,3);
         _root.hme.hme(3,5);
         _root.lmM.lmM("mmO",3,5);
         _root.lmL.lmL("lg",1,5,0,1);
         _root.lmF.lmF("ft",1,5,0,1);
      }
      else if(ptr3 == 230)
      {
         _root.fce.chgEl("half",null,null,1);
         _root.fce.chgEbs("dn",null,null,null,1);
         _parent.gotoAndStop("nakadasiEnd");
      }
   }
}
