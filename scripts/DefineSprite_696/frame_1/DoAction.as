function fallPet()
{
   this.attachMovie("petal","petal" + depth,depth);
   depth++;
}
petalNum = 30;
depth = 1;
this.onEnterFrame = function()
{
   if(_root.stage.aniBg())
   {
      if(!_root.genRnd(0,petalNum))
      {
         fallPet();
      }
   }
};
