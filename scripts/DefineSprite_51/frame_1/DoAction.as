if(_root.sys_so.data["stg" + _root.v_cst] > 100)
{
   _root.bgLd.loadClip("data/cbg0" + (_root.sys_so.data["stg" + _root.v_cst] - 100) + ".jpg",this);
}
else
{
   _root.bgLd.loadClip("data/bgs/bg" + _root.sys_so.data["stg" + _root.v_cst] + ".jpg",this);
}
