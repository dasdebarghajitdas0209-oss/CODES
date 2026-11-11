if(_parent._parent.v_talePos == "F1")
{
   gotoAndStop("hor1");
   play();
}
else if(_parent._parent.v_talePos == "F2")
{
   gotoAndStop("hor2");
   play();
}
else if(_parent._parent.v_talePos2 == "dn")
{
   gotoAndStop("verIn");
   play();
}
else
{
   gotoAndStop("verOut");
   play();
}
_parent._parent.v_talePos = _root.v_face;
_root.fcdRls(_parent._parent);
