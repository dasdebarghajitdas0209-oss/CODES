onClipEvent(load){
   function prs()
   {
      mon = 1;
      _root.fce.fceOn("man1",null,0,1,_root.jdgTng("AnlI"));
      rubAnlI();
      chgAutoMode();
      _parent.gotoAndStop("ins");
      _root.main.fr.legOp.nkds.ctrlNkds("ndErase");
      _root.clkLk.clOn(this,"AnlI",null,"single");
   }
   function rubAnlI()
   {
      var _loc3_;
      var _loc4_;
      if(_root.sys_so.data.v_handAnlI == 11)
      {
         _loc3_ = 0.1;
         _loc4_ = -10;
      }
      else
      {
         _loc4_ = -8;
      }
      this.startCur(_root.main.fr.legOp["myHandAnlI" + _root.sys_so.data.v_handAnlI],"R",1,"amo",null,0,0,0,0,0,_loc3_,_loc4_);
   }
   function rls()
   {
      if(!_root.clkLk.clStat)
      {
         mon = null;
         _root.fce.man1.rls();
         this.stopCur();
         _parent.gotoAndStop("def");
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
   function chgAutoMode()
   {
      var _loc3_;
      var _loc4_;
      var _loc5_;
      if(_root.v_tmode == 2)
      {
         _loc3_ = _root.sys_so.data.v_ptnAnlI;
         _loc4_ = [8,15,30,60,90];
         _loc5_ = [5,3.3,2.2,1.3,1];
         this.startAmo(_loc3_,null,100,_loc4_[_root.sys_so.data.v_spdAnlI],_loc5_[_root.sys_so.data.v_spdAnlI]);
      }
   }
   function chgMyHand()
   {
      if(mon)
      {
         rubAnlI();
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
   this.vo = 1;
}
