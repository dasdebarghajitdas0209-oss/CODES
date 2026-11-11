function fallPet()
{
   this.attachMovie("bamboo","bamboo" + depth,depth);
   depth++;
}
offMin = 5;
offMax = 30;
onMin = 5;
onMax = 25;
petalNum = 3;
depth = 1;
pt = 0;
sw = 0;
_root.sunBeam.gotoAndStop("def");
this.onEnterFrame = function()
{
   if(_root.stage.aniBg())
   {
      pt++;
      if(pt == 1)
      {
         delay = _root.genRnd(20,50);
         offTime = _root.genRnd(offMin * 24,offMax * 24);
         onTime = offTime + delay + _root.genRnd(onMin * 24,onMax * 24);
      }
      else if(pt == offTime)
      {
         _root.sunBeam.gotoAndPlay("on");
      }
      else if(pt == offTime + delay)
      {
         sw = 1;
      }
      else if(pt == onTime)
      {
         _root.sunBeam.gotoAndPlay("off");
      }
      else if(pt == onTime + delay)
      {
         sw = 0;
         pt = 0;
      }
      if(sw && !_root.genRnd(0,petalNum))
      {
         fallPet();
      }
   }
};
