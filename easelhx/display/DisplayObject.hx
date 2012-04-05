
package easelhx.display;
import easelhx.display.Shadow;
import easelhx.display.Stage;
import easelhx.events.MouseEvent;
import easelhx.filters.Filter;
import easelhx.geom.Matrix2D;
import easelhx.geom.Point;
import js.CanvasRenderingContext2D;
import js.HTMLCanvasElement;
/*
* DisplayObject by Grant Skinner. Dec 5, 2010
* Visit http://easeljs.com/ for documentation, updates and examples.
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
*/

/**
* The Easel Javascript library provides a retained graphics mode for canvas
* including a full, hierarchical display list, a core interaction model, and
* helper classes to make working with Canvas much easier.
* @module EaselJS
**/

/**
* DisplayObject is an abstract class that should not be constructed directly. Instead construct subclasses such as
* Sprite, Bitmap, and Shape. DisplayObject is the base class for all display classes in the CanvasDisplay library.
* It defines the core properties and methods that are shared between all display objects.
* @class DisplayObject
* @constructor
**/
@:native("DisplayObject")
extern class DisplayObject {

	/**
	 * Suppresses errors generated when using features like hitTest, onPress/onClick, and getObjectsUnderPoint with cross
	 * domain content
	 * @property suppressCrossDomainErrors
	 * @static
	 * @type Boolean
	 * @default false
	 **/
	public static var suppressCrossDomainErrors:Bool;

	/**
	 * The alpha (transparency) for this display object. 0 is fully transparent, 1 is fully opaque.
	 * @property alpha
	 * @type Number
	 * @default 1
	 **/
	public var alpha:Float;

	/**
	 * If a cache is active, this returns the canvas that holds the cached version of this display object. See cache()
	 * for more information. READ-ONLY.
	 * @property cacheCanvas
	 * @type HTMLCanvasElement
	 * @default null
	 **/
	public var cacheCanvas:HTMLCanvasElement;

	/**
	 * Unique ID for this display object. Makes display objects easier for some uses.
	 * @property id
	 * @type Number
	 * @default -1
	 **/
	public var id:Int;

	/**
	 * Indicates whether to include this object when running Stage.getObjectsUnderPoint(). Setting this to true for
	 * Sprites will cause the Sprite to be returned (not its children) regardless of whether it's mouseChildren property
	 * is true.
	 * @property mouseEnabled
	 * @type Boolean
	 * @default true
	 **/
	public var mouseEnabled:Bool;

	/**
	 * An optional name for this display object. Included in toString(). Useful for debugging.
	 * @property name
	 * @type String
	 * @default null
	 **/
	public var name:String;

	/**
	 * A reference to the Sprite or Stage object that contains this display object, or null if it has not been added to
	 * one. READ-ONLY.
	 * @property parent
	 * @final
	 * @type DisplayObject
	 * @default null
	 **/
	public var parent:DisplayObject;

	/**
	 * The x offset for this display object's registration point. For example, to make a 100x100px Bitmap rotate around
	 * it's center, you would set regX and regY to 50.
	 * @property regX
	 * @type Number
	 * @default 0
	 **/
	public var regX:Float;

	/**
	 * The y offset for this display object's registration point. For example, to make a 100x100px Bitmap rotate around
	 * it's center, you would set regX and regY to 50.
	 * @property regY
	 * @type Number
	 * @default 0
	 **/
	public var regY:Float;

	/**
	 * The rotation in degrees for this display object.
	 * @property rotation
	 * @type Number
	 * @default 0
	 **/
	public var rotation:Float;

	/**
	 * The factor to stretch this display object horizontally. For example, setting scaleX to 2 will stretch the display
	 * object to twice it's nominal width.
	 * @property scaleX
	 * @type Number
	 * @default 1
	 **/
	public var scaleX:Float;

	/**
	 * The factor to stretch this display object vertically. For example, setting scaleY to 0.5 will stretch the display
	 * object to half it's nominal height.
	 * @property scaleY
	 * @type Number
	 * @default 1
	 **/
	public var scaleY:Float;

	/**
	 * The factor to skew this display object horizontally.
	 * @property skewX
	 * @type Number
	 * @default 0
	 **/
	public var skewX:Float;

	/**
	 * The factor to skew this display object vertically.
	 * @property skewY
	 * @type Number
	 * @default 0
	 **/
	public var skewY:Float;

	/**
	 * A shadow object that defines the shadow to render on this display object. Set to null to remove a shadow. If
	 * null, this property is inherited from the parent container.
	 * @property shadow
	 * @type Shadow
	 * @default null
	 **/
	public var shadow:Shadow;

	/**
	 * Indicates whether this display object should be rendered to the canvas and included when running
	 * Stage.getObjectsUnderPoint().
	 * @property visible
	 * @type Boolean
	 * @default true
	 **/
	public var visible:Bool;

	/**
	 * The x (horizontal) position of the display object, relative to its parent.
	 * @property x
	 * @type Number
	 * @default 0
	 **/
	public var x:Float;

	/** The y (vertical) position of the display object, relative to its parent.
	 * @property y
	 * @type Number
	 * @default 0
	 **/
	public var y:Float;

	/**
	 * The composite operation indicates how the pixels of this display object will be composited with the elements
	 * behind it. If null, this property is inherited from the parent container. For more information, read the
	 * <a href="http://www.whatwg.org/specs/web-apps/current-work/multipage/the-canvas-element.html#compositing">
	 * whatwg spec on compositing</a>.
	 * @property compositeOperation
	 * @type String
	 * @default null
	 **/
	public var compositeOperation:String;

	/**
	 * Indicates whether the display object should have it's x & y position rounded prior to drawing it to stage.
	 * This only applies if the enclosing stage has snapPixelsEnabled set to true, and the display object's composite
	 * transform does not include any scaling, rotation, or skewing. The snapToPixel property is true by default for
	 * Bitmap and BitmapAnimation instances, and false for all other display objects.
	 * @property snapToPixel
	 * @type Boolean
	 * @default false
	 **/
	public var snapToPixel:Bool;

	/**
	 * The onPress callback is called when the user presses down on their mouse over this display object. The handler
	 * is passed a single param containing the corresponding MouseEvent instance. You can subscribe to the onMouseMove
	 * and onMouseUp callbacks of the event object to receive these events until the user releases the mouse button.
	 * If an onPress handler is set on a container, it will receive the event if any of its children are clicked.
	 * @event onPress
	 * @param {MouseEvent} event MouseEvent with information about the event.
	 **/
	public var onPress:MouseEvent->Void;

	/**
	 * The onClick callback is called when the user presses down on and then releases the mouse button over this
	 * display object. The handler is passed a single param containing the corresponding MouseEvent instance. If an
	 * onClick handler is set on a container, it will receive the event if any of its children are clicked.
	 * @event onClick
	 * @param {MouseEvent} event MouseEvent with information about the event.
	 **/
	public var onClick:MouseEvent->Void;

	/**
	 * The onDoubleClick callback is called when the user double clicks over this display object. The handler is
	 * passed a single param containing the corresponding MouseEvent instance. If an onDoubleClick handler is set
	 * on a container, it will receive the event if any of its children are clicked.
	 * @event onDoubleClick
	 * @param {MouseEvent} event MouseEvent with information about the event.
	 **/
	public var onDoubleClick:MouseEvent->Void;

	/**
	 * The onMouseOver callback is called when the user rolls over the display object. You must enable this event using
	 * stage.enableMouseOver(). The handler is passed a single param containing the corresponding MouseEvent instance.
	 * @event onMouseOver
	 * @param {MouseEvent} event MouseEvent with information about the event.
	 **/
	public var onMouseOver:MouseEvent->Void;

	/**
	 * The onMouseOut callback is called when the user rolls off of the display object. You must enable this event using
	 * stage.enableMouseOver(). The handler is passed a single param containing the corresponding MouseEvent instance.
	 * @event onMouseOut
	 * @param {MouseEvent} event MouseEvent with information about the event.
	 **/
	public var onMouseOut:MouseEvent->Void;

	/**
	 * The tick callback is called on each display object on stage whenever the stage updates.
	 * This occurs immediately before the rendering (draw) pass.
	 * @event tick
	 **/
	public var tick:Void->Void;

	/**
	 * An array of Filter objects to apply to this display object. Filters are only applied / updated when cache() or
	 * updateCache() is called on the display object, and only apply to the area that is cached.
	 * @property filters
	 * @type Array[Filter]
	 * @default null
	 **/
	public var filters:Array<Dynamic>;

	/**
	* Returns an ID number that uniquely identifies the current cache for this display object.
	* This can be used to determine if the cache has changed since a previous check.
	* @property cacheID
	* @type Number
	* @default 0
	*/
	public var cacheID:Int;
	
// public methods:
	/**
	 * Returns true or false indicating whether the display object would be visible if drawn to a canvas.
	 * This does not account for whether it would be visible within the boundaries of the stage.
	 * NOTE: This method is mainly for internal use, though it may be useful for advanced uses.
	 * @method isVisible
	 * @return {Boolean} Boolean indicating whether the display object would be visible if drawn to a canvas
	 **/
	public function isVisible():Bool;

	/**
	 * Draws the display object into the specified context ignoring it's visible, alpha, shadow, and transform.
	 * Returns true if the draw was handled (useful for overriding functionality).
	 * NOTE: This method is mainly for internal use, though it may be useful for advanced uses.
	 * @method draw
	 * @param {CanvasRenderingContext2D} ctx The canvas 2D context object to draw into.
	 * @param {Boolean} ignoreCache Indicates whether the draw operation should ignore any current cache.
	 * For example, used for drawing the cache (to prevent it from simply drawing an existing cache back
	 * into itself).
	 **/
	public function draw(ctx:CanvasRenderingContext2D, ignoreCache:Bool):Bool;

	/**
	 * Draws the display object into a new canvas, which is then used for subsequent draws. For complex content
	 * that does not change frequently (ex. a Sprite with many children that do not move, or a complex vector Shape),
	 * this can provide for much faster rendering because the content does not need to be re-rendered each tick. The
	 * cached display object can be moved, rotated, faded, etc freely, however if it's content changes, you must manually
	 * update the cache by calling updateCache() or cache() again. You must specify the cache area via the x, y, w,
	 * and h parameters. This defines the rectangle that will be rendered and cached using this display object's
	 * coordinates. For example if you defined a Shape that drew a circle at 0, 0 with a radius of 25, you could call
	 * myShape.cache(-25, -25, 50, 50) to cache the full shape.
	 * @method cache
	 * @param {Number} x The x coordinate origin for the cache region.
	 * @param {Number} y The y coordinate origin for the cache region.
	 * @param {Number} width The width of the cache region.
	 * @param {Number} height The height of the cache region.
	 **/
	public function cache(x:Float, y:Float, width:Float, height:Float):Void;

	/**
	 * Redraws the display object to its cache. Calling updateCache without an active cache will throw an error.
	 * If compositeOperation is null the current cache will be cleared prior to drawing. Otherwise the display object
	 * will be drawn over the existing cache using the specified compositeOperation.
	 * @method updateCache
	 * @param {String} compositeOperation The compositeOperation to use, or null to clear the cache and redraw it.
	 * <a href="http://www.whatwg.org/specs/web-apps/current-work/multipage/the-canvas-element.html#compositing">
	 * whatwg spec on compositing</a>.
	 **/
	public function updateCache(compositeOperation:String):Void;

	/**
	 * Clears the current cache. See cache() for more information.
	 * @method uncache
	 **/
	public function uncache():Void;
	
	/**
	* Returns a data URL for the cache, or null if this display object is not cached.
	* Uses cacheID to ensure a new data URL is not generated if the cache has not changed.
	* @method getCacheDataURL.
	**/
	public function getCacheDataURL():String;

	/**
	 * Returns the stage that this display object will be rendered on, or null if it has not been added to one.
	 * @method getStage
	 * @return {Stage} The Stage instance that the display object is a descendent of. null if the DisplayObject has not
	 * been added to a Stage.
	 **/
	public function getStage():Stage;

	/**
	 * Transforms the specified x and y position from the coordinate space of the display object
	 * to the global (stage) coordinate space. For example, this could be used to position an HTML label
	 * over a specific point on a nested display object. Returns a Point instance with x and y properties
	 * correlating to the transformed coordinates on the stage.
	 * @method localToGlobal
	 * @param {Number} x The x position in the source display object to transform.
	 * @param {Number} y The y position in the source display object to transform.
	 * @return {Point} A Point instance with x and y properties correlating to the transformed coordinates
	 * on the stage.
	 **/
	public function localToGlobal(x:Float, y:Float):Point;

	/**
	 * Transforms the specified x and y position from the global (stage) coordinate space to the
	 * coordinate space of the display object. For example, this could be used to determine
	 * the current mouse position within the display object. Returns a Point instance with x and y properties
	 * correlating to the transformed position in the display object's coordinate space.
	 * @method globalToLocal
	 * @param {Number} x The x position on the stage to transform.
	 * @param {Number} y The y position on the stage to transform.
	 * @return {Point} A Point instance with x and y properties correlating to the transformed position in the
	 * display object's coordinate space.
	 **/
	public function globalToLocal(x:Float, y:Float):Point;

	/**
	 * Transforms the specified x and y position from the coordinate space of this display object to the
	 * coordinate space of the target display object. Returns a Point instance with x and y properties
	 * correlating to the transformed position in the target's coordinate space. Effectively the same as calling
	 * var pt = this.localToGlobal(x, y); pt = target.globalToLocal(pt.x, pt.y);
	 * @method localToLocal
	 * @param {Number} x The x position in the source display object to transform.
	 * @param {Number} y The y position on the stage to transform.
	 * @param {DisplayObject} target The target display object to which the coordinates will be transformed.
	 * @return {Point} Returns a Point instance with x and y properties correlating to the transformed position
	 * in the target's coordinate space.
	 **/
	public function localToLocal(x:Float, y:Float, target:DisplayObject):Point;

	/**
	 * Shortcut method to quickly set the transform properties on the display object. All parameters are optional.
	 * Omitted parameters will have the default value set (ex. 0 for x/y, 1 for scaleX/Y).
	 * @method setTransform
	 * @param {Number} x
	 * @param {Number} y
	 * @param {Number} scaleX
	 * @param {Number} scaleY
	 * @param {Number} rotation
	 * @param {Number} skewX
	 * @param {Number} skewY
	 * @param {Number} regX
	 * @param {Number} regY
	*/
	public function setTransform(x:Float, y:Float, scaleX:Float, scaleY:Float, rotation:Float, skewX:Float, skewY:Float, regX:Float, regY:Float):Void;

	/**
	 * Generates a concatenated Matrix2D object representing the combined transform of
	 * the display object and all of its parent Containers up to the highest level ancestor
	 * (usually the stage). This can be used to transform positions between coordinate spaces,
	 * such as with localToGlobal and globalToLocal.
	 * @method getConcatenatedMatrix
	 * @param {Matrix2D} mtx Optional. A Matrix2D object to populate with the calculated values. If null, a new
	 * Matrix object is returned.
	 * @return {Matrix2D} a concatenated Matrix2D object representing the combined transform of
	 * the display object and all of its parent Containers up to the highest level ancestor (usually the stage).
	 **/
	public function getConcatenatedMatrix(mtx:Matrix2D):Matrix2D;

	/**
	 * Tests whether the display object intersects the specified local point (ie. draws a pixel with alpha > 0 at
	 * the specified position). This ignores the alpha, shadow and compositeOperation of the display object, and all
	 * transform properties including regX/Y.
	 * @method hitTest
	 * @param {Number} x The x position to check in the display object's local coordinates.
	 * @param {Number} y The y position to check in the display object's local coordinates.
	 * @return {Boolean} A Boolean indicting whether a visible portion of the DisplayObject intersect the specified
	 * local Point.
	*/
	public function hitTest(x:Int, y:Int):Bool;

	/**
	 * Returns a clone of this DisplayObject. Some properties that are specific to this instance's current context are
	 * reverted to their defaults (for example .parent).
	 * @method clone
	 @return {DisplayObject} A clone of the current DisplayObject instance.
	 **/
	 public function clone():DisplayObject;

	/**
	 * Returns a string representation of this object.
	 * @method toString
	 * @return {String} a string representation of the instance.
	 **/
	public function toString():String;
}