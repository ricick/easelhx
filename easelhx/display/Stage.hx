/**
* Bitmap by Grant Skinner. Dec 5, 2010
* Visit www.gskinner.com/blog for documentation, updates and more free code.
*
*
* Copyright (c) 2010 Grant Skinner
* 
* Permission is hereby granted, free of charge, to any person
* obtaining a copy of this software and associated documentation
* files (the "Software"), to deal in the Software without
* restriction, including without limitation the rights to use,
* copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the
* Software is furnished to do so, subject to the following
* conditions:
* 
* The above copyright notice and this permission notice shall be
* included in all copies or substantial portions of the Software.
* 
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
* OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
* NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
* HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
* FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
* OTHER DEALINGS IN THE SOFTWARE.
**/
package easelhx.display;

import easelhx.events.MouseEvent;
import js.DomCanvas;

@:native("Stage")
extern class Stage extends Container {

// public properties:
	/** Indicates whether the stage should automatically clear the canvas before each render. You can set this to false 
	* to manually control clearing (for generative art, or when pointing multiple stages at the same canvas for example). **/
	public var autoClear( default, default ) : Bool;
	
	/** The canvas the stage will render to. Multiple stages can share a single canvas, but you must disable autoClear for all 
	* but the first stage that will be ticked (or they will clear each other's render). **/
	public var canvas( default, default ) : DomCanvas;
	
	public var mouseX( default, default ) : Float;
	public var mouseY( default, default ) : Float;

// constructor:
	/**
	* Constructs a Stage object with the specified target canvas.
	* @param canvas The canvas the stage will render to.
	* @class A stage is the root level Container for a display list. Each time its tick method is called, it will render 
	* its display list to its target canvas.
	* @augments Container
	**/
	public function new( canvas : DomCanvas ) : Void;
	
	
	/**
	* Clears the target canvas. Useful if autoClear is set to false.
	**/
	public function clear() : Void;
	
		
	override public function toString() : String;
	
	public function enableMouseOver(frequency:Int):Void;
	dynamic public function onMouseMove(event:MouseEvent) : Void;
	public function update():Void;
}
