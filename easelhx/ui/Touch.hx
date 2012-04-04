package easelhx.ui;
import easelhx.display.Stage;
@:native("Touch")
extern class Touch 
{
static public function isSupported():Bool;

static public function enable(stage:Stage) : Void;
	
}