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
         _root.cap.playVo([["axx","aaxq","haaxq","aaxx","haxx","kyaxx","ahax","hix","xx"],["aa","ahaa","an","nfu","ahax"]],-1,1,null,"def");
         _root.fce.chgEl("half",null,null,1);
         _root.fce.eyeSp([1,null],1);
         _root.hme.hme(4,2,1,5);
         _root.lmF.lmF("ft",1,2,8);
      }
      if(_root.endSnd)
      {
         ptr++;
         if(ptr == 15)
         {
            voaR = _root.genRnd(0,2) ? ["dameexx","dameeeexx","iyaaaxx","kannin","moiya","moYamete","yametexx","yameteexx"] : ["sotonixx"];
            voaL = ["ahahax"];
            lpFrg = _root.sys_so.data.v_dschgLoop;
            if(lpFrg)
            {
               _root.cap.playVo([voaR,voaL],20,1,null,null,"def",1);
            }
            else
            {
               _root.cap.playVo([voaR,voaL],[20,null],1,null,null,null,2);
            }
            _root.fce.chgEl(["shut2m","shut1"],null,null,1);
         }
         else if(ptr == 18)
         {
            _root.fce.trnFace();
            _root.hme.hme(1,2);
            _root.lmM.lmM("mmO",-2,2);
            if(_root.jdgClsLeg())
            {
               _root.lmL.lmL("lg",2,2);
            }
            _root.lmF.lmF("ft",2,2,0,1);
            this.dschgLoopTime = _root.genRnd(70,150);
         }
         else if(lpFrg && ptr == dschgLoopTime)
         {
            _root.fce.chgFace("dn");
            _root.fce.chgEl("half",null,null,1);
            _root.fce.chgMo("open2m",null,null,1);
            _root.hme.hme(3,4);
            _root.lmM.lmM("mmO",0,4);
            _root.lmL.lmL("lg",0,4);
            _root.lmF.lmF("ft",1,4,0,1);
         }
         else if(lpFrg && ptr == dschgLoopTime + 60)
         {
            ptr = 0;
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
      else if(ptr2 == 40)
      {
         _root.command.ctrl("off");
         _root.cap.playVo("noSnd",-1,1,"halfMove",null,null,2);
         _root.fce.chgEbs(["dnx","dnC"],null,null,null,1);
         _root.fce.chgEl("half",null,null,1);
         _root.hme.hme(3,2);
         _root.lmM.lmM("mmO",0,3);
         _root.lmL.lmL("lg",1,3,0,1);
         _root.lmF.lmF("ft",1,3,0,1);
      }
      else if(ptr2 == 80 - reduceTime)
      {
         _root.cap.playVo([["guxx","guxx","nguxx","uxx","nhaxx","gix","higux","hix","hiix","nmux","xx","ahax","aux","haux"],["uxx","ahax","ahaux","haux","i_iku"]],-1,1,null,null,"haMove",2);
         _root.fce.chgEl("shut2m",null,null,1);
         _root.hme.hme(2,1);
         _root.lmM.lmM("mmO",-1,1,5);
         if(_root.jdgClsLeg())
         {
            _root.lmL.lmL("lg",1,1,5);
         }
         _root.lmF.lmF("ft",1,1);
      }
      else if(ptr2 == 130 - reduceTime)
      {
         _root.cap.playVo([["iyaaaxx","iyaaaEx","iyaaaSx","dameexx","dameeeexx","dameExt","aaaaaSx","nnnnxx","uuuuuxx"],_root.rtnExVoice()],[40,null],1,null,null,[null,null],3);
         _root.hme.hme(1,2);
         _root.lmM.lmM("mmO",-3,2);
         if(_root.jdgClsLeg())
         {
            _root.lmL.lmL("lg",3,2);
         }
         _root.lmF.lmF("ft",4,2,0,1);
      }
      else if(ptr2 == 133 - reduceTime)
      {
         if(_root.v_emo == 1)
         {
            _root.fce.chgFace("up");
            _root.fce.chgEl("shut1",null,null,1);
            _root.main.nure();
         }
         else
         {
            _root.fce.trnFace();
         }
      }
      else if(ptr2 == 150 - reduceTime)
      {
         _root.fce.chgEl([null,"half"],null,null,1);
         _root.fce.chgYodare("R",[null,"onStart"],1);
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
      else if(ptr3 == 120)
      {
         _root.cap.playVo([["aa","aaaa","ha","haaa","uux","iyaa","uuu"],["aa","aaaa","ahaha","haaa"]],20,1,null,null,["open1","half"],3);
         if(_root.v_emo == 1)
         {
            _root.fce.chgFace("fr");
            _root.fce.chgEl("shut1",null,null,1);
         }
         _root.hme.hme(3,5);
         _root.lmM.lmM("mmO",3,5);
         _root.lmL.lmL("lg",1,5,0,1);
         _root.lmF.lmF("ft",1,5,0,1);
      }
      else if(ptr3 == 150)
      {
         if(_root.v_emo == 1)
         {
            _root.fce.chgFace("dn");
         }
         else
         {
            _root.fce.chgEl("half",null,null,1);
            _root.fce.chgEbs("dn",null,null,null,1);
         }
         _parent.gotoAndStop("nakadasiEnd");
      }
   }
}
