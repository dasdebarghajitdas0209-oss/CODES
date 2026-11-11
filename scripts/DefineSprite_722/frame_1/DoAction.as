function rst()
{
   if(_parent._name == "btm1_1")
   {
      stop();
   }
   else
   {
      gotoAndStop("off");
      gotoAndStop("L" + _root["v_" + _parent._name + "L"] + "R" + _root["v_" + _parent._name + "R"]);
      _root.colCos(this,"top10_0");
   }
}
rst();
