function rstTime()
{
   pt = 0;
   pt2 = 0;
   pt3 = 0;
   ptr = 0;
   ptr2 = 0;
   ptr3 = 0;
   ptr4 = 0;
   ptr5 = 0;
}
function endFce()
{
   if(this.ef)
   {
      _root.fce.gotoAndStop("def");
   }
   this.ef = 1;
}
function jdgEnd()
{
   if(this.ef)
   {
      return true;
   }
   this.ef = 1;
}
gotoAndStop("off");
rstTime();
