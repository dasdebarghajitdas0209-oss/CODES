onClipEvent(load){
   function setV()
   {
      hdD = !(_root.v_emo == 0 && !_root.command.com1.dischgIn.noRes) ? 2 : 1;
      hdS = 3;
      mmD = mmS = 0;
      mmOD = !(_root.v_emo >= 2 && !_root.command.com1.dischgIn.noRes) ? -2 : -1;
      mmOS = 3;
      mmBD = mmBS = 0;
      mmBOD = mmBOS = 0;
      altLg = 1;
      lgD = !(_root.v_emo >= 2 && !_root.command.com1.dischgIn.noRes) ? 2 : 1;
      lgS = 3;
      lgBD = lgBS = 0;
      ftD = !(_root.v_emo >= 2 && !_root.command.com1.dischgIn.noRes) ? 2 : 1;
      ftS = 3;
      ftBD = ftBS = 0;
      st = 13;
      ofst = 3;
      wt = !(_root.v_emo >= 2 && !_root.command.com1.dischgIn.noRes) ? 80 : 20;
      it = 100;
      intrpt = _root.fce.jdgFceOn() != "kis" ? 1 : null;
   }
   setV();
}
