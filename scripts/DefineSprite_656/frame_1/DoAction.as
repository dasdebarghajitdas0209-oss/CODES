function rst()
{
   gotoAndStop("h" + _root.rtnHair());
   this._visible = !_root.v_hood ? true : false;
}
function swgAllHair()
{
   if(_root.rtnHair() == 0)
   {
      hairBkBk1.hairBkBk2.hairBkBk3.gotoAndPlay("swgOut");
      hairBkBk1.hairBkBk2.hairBkBk3.gotoAndPlay("fromR");
      _root.stage.town.townFace.hairBkBk.hairBkBk1.hairBkBk2.hairBkBk3.gotoAndPlay("swgOut");
      _root.stage.town.townFace.hairBkBk.hairBkBk1.hairBkBk2.hairBkBk3.gotoAndPlay("from");
   }
}
rst();
