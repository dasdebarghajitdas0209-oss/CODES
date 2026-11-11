stop();
if(bgLdr._width != Stage.width)
{
   bgLdr._width = Stage.width;
   bgLdr._height = Stage.height;
   gotoAndPlay(_currentframe - 1);
}
