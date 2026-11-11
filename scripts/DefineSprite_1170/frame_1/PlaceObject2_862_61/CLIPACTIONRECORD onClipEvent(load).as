onClipEvent(load){
   function prs()
   {
      mon = 1;
      _root.fce.fceOn("man1",null,0,0,_root.jdgTng("ManI"),"noRld","move1");
      rubManI();
      chgAutoMode();
      _root.main.fr.legOp.nkds.ctrlNkds("ndErase");
      _parent.gotoAndStop("fgIns");
      _root.clkLk.clOn(this,"ManI",null,"single");
   }
   function rubManI()
   {
      this.startCur(_root.main.fr.legOp["myHandManI" + _root.sys_so.data.v_handManI],"R",1,"amo",null,0,0,0,0,[-1.6],null,-1);
   }
   function rls()
   {
      if(!_root.clkLk.clStat)
      {
         mon = null;
         _root.fce.man1.rls();
         this.stopCur();
         _parent.gotoAndStop("nn");
         if(!_root.v_tmode)
         {
            _root.clkLk.clOff();
         }
      }
   }
   function ovr()
   {
      _root.guide.gdOn("manX");
   }
   function chgAutoMode()
   {
      var _loc3_;
      var _loc4_;
      var _loc5_;
      if(_root.v_tmode == 2)
      {
         _loc3_ = _root.sys_so.data.v_ptnManI;
         _loc4_ = [8,15,30,60,90];
         _loc5_ = [5,3.3,2.2,1.3,1];
         this.startAmo(_loc3_,null,100,_loc4_[_root.sys_so.data.v_spdManI],_loc5_[_root.sys_so.data.v_spdManI]);
      }
   }
   function chgMyHand()
   {
      if(mon)
      {
         rubManI();
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
