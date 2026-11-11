function fallPet()
{
   this.attachMovie("snow","snow" + depth,depth);
   depth++;
}
petalNum = 3;
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
