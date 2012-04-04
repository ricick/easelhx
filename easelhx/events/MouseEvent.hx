package easelhx.events;
@:native("MouseEvent")
extern class MouseEvent 
{
	public var stageX:Float;
	public var stageY:Float;
	dynamic public function onMouseMove(event:MouseEvent) : Void;

	public function new() : Void;
	
}