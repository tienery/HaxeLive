package hxlive.utils.openfl;
import openfl.geom.Point;
import openfl.display.DisplayObject;
import openfl.Lib;

class Location
{

    public static function setLocationLeftOf(obj:DisplayObject, of:DisplayObject, padding:Float = 2)
    {
        obj.x = of.x - obj.width - padding;
        obj.y = (of.height / 2 - obj.height / 2) + of.y;
    }
    
    public static function setLocationTopOf(obj:DisplayObject, of:DisplayObject, padding:Float = 2)
    {
        obj.y = of.y - obj.height - padding;
        obj.x = (of.width / 2 - obj.width / 2) + of.x;
    }
    
    public static function setLocationRightOf(obj:DisplayObject, of:DisplayObject, padding:Float = 2)
    {
        obj.x = of.x + of.width + padding;
        obj.y = (of.height / 2 - obj.height / 2) + of.y;
    }
    
    public static function setLocationBottomOf(obj:DisplayObject, of:DisplayObject, padding:Float = 2)
    {
        obj.x = (of.width / 2 - obj.width / 2) + of.x;
        obj.y = of.y + of.height + padding;
    }
    
    public static inline function screenFromTop(obj:DisplayObject, offset:Float = 0)
	{
        obj.x = Lib.current.stage.stageWidth / 2 - obj.width / 2;
        obj.y = offset;
	}
    
    public static inline function screenFromLeft(obj:DisplayObject, offset:Float = 0)
    {
        obj.x = offset;
        obj.y = Lib.current.stage.stageHeight / 2 - obj.height / 2;
    }
    
    public static inline function screenFromRight(obj:DisplayObject, offset:Float = 0)
    {
        obj.x = obj.width + offset - Lib.current.stage.stageWidth;
        obj.y = Lib.current.stage.stageHeight / 2 - obj.height / 2;
    }
    
    public static inline function screenFromBottom(obj:DisplayObject, offset:Float = 0)
    {
        obj.y = obj.height + offset - Lib.current.stage.stageHeight;
        obj.x = Lib.current.stage.stageWidth / 2 - obj.width / 2;
    }
    
}