function swing()
{
   gotoAndPlay("h" + _root.genRnd(0,1,1,this));
}
if(_parent._parent.v_talePos == "R")
{
   gotoAndStop("fromR");
   play();
}
else if(_parent._parent.v_talePos == "L")
{
   gotoAndStop("fromL");
   play();
}
else
{
   stop();
}
_parent._parent.v_talePos = "F2";
_root.fcdRls(_parent._parent);
