function rst()
{
   gotoAndStop("def");
   if(_root["v_" + _parent._name + "L"] == 99)
   {
      gotoAndStop("off");
   }
   else
   {
      gotoAndStop("L" + _root["v_" + _parent._name + "L"] + "R" + _root["v_" + _parent._name + "R"]);
   }
}
_root.colCos(this,"top10_0");
rst();
