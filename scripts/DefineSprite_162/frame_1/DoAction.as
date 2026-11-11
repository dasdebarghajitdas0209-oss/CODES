function swg(sd)
{
   gotoAndPlay(sd);
   _root.stage.town.townFace.hairBacks.hairBacks1.h0.gotoAndPlay(sd);
}
F2s = _parent.f2s;
if(F2s == "R" || F2s == "L")
{
   gotoAndPlay(F2s);
}
else
{
   stop();
}
_parent.f2s = _root.v_face;
