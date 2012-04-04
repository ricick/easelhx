package easelhx.display;
/*
* BitmapAnimation by Grant Skinner. Dec 5, 2010
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
* Displays frames or sequences of frames (ie. animations) from a sprite sheet image. A sprite sheet is a series of images
* (usually animation frames) combined into a single image. For example, an animation
* consisting of 8 100x100 images could be combined into a 400x200 sprite sheet (4 frames across by 2 high).
* You can display individual frames, play frames as an animation, and even sequence animations
* together. See the SpriteSheet class for more information on setting up frames and animations.
* @class BitmapAnimation
* @extends DisplayObject
* @constructor
* @param {SpriteSheet} spriteSheet The SpriteSheet instance to play back. This includes the source image(s), frame
* dimensions, and frame data. See SpriteSheet for more information.
**/
@:native("BitmapAnimation")
extern class BitmapAnimation extends DisplayObject {
	public function new(spriteSheet:SpriteSheet):Void;
// public properties:

	/**
	 * Specifies a function to call whenever any animation reaches its end. It will be called with two
	 * params: the first will be a reference to this instance, the second will be the name of the animation
	 * that just ended.
	 * @property onAnimationEnd
	 * @type Function
	 **/
	public var onAnimationEnd:BitmapAnimation->String->Void;

	/**
	 * The frame that will be drawn when draw is called. Note that with some SpriteSheet data, this
	 * will advance non-sequentially. READ-ONLY.
	 * @property currentFrame
	 * @type Number
	 * @default -1
	 **/
	public var currentFrame:Int;

	/**
	 * Returns the currently playing animation. READ-ONLY.
	 * @property currentAnimation
	 * @type String
	 * @final
	 **/
	public var currentAnimation(getter,null):String;

	/**
	 * Prevents the animation from advancing each tick automatically. For example, you could create a sprite
	 * sheet of icons, set paused to true, and display the appropriate icon by setting currentFrame.
	 * @property paused
	 * @type Boolean
	 * @default false
	 **/
	public var paused:Bool;

	/**
	 * The SpriteSheet instance to play back. This includes the source image, frame dimensions, and frame
	 * data. See SpriteSheet for more information.
	 * @property spriteSheet
	 * @type SpriteSheet
	 **/
	public var spriteSheet:SpriteSheet;
	
	/** 
	 * When used in conjunction with animations having an frequency greater than 1, this lets you offset which tick the playhead will
	 * advance on. For example, you could create two BitmapAnimations, both playing an animation with a frequency of 2, but one
	 * having offset set to 1. Both instances would advance every second tick, but they would advance on alternating
	 * ticks (effectively, one instance would advance on odd ticks, the other on even ticks).
	 * @property offset
	 * @type Number
	 * @default 0
	 */
	public var offset:Int;
	
	
	/**
	 * Specifies the current frame index within the current playing animation. When playing normally, this will
	 * increase successively from 0 to n-1, where n is the number of frames in the current animation.
	 * @property currentAnimationFrame
	 * @type Number
	 * @default 0
	 **/
	public var currentAnimationFrame:Int;
	
	/**
	 * TODO: Doc.
	 * @method play
	 **/
	public function play():Void;
	
	/**
	 * TODO: Doc.
	 * @method stop
	 **/
	public function stop():Void;

	/**
	 * Sets paused to false and plays the specified animation name, named frame, or frame number.
	 * @method gotoAndPlay
	 * @param {String|Number} frameOrAnimation The frame number or animation name that the playhead should move to
	 * and begin playing.
	 **/
	public function gotoAndPlay(frameOrAnimation:Dynamic):Void;

	/**
	 * Sets paused to true and seeks to the specified animation name, named frame, or frame number.
	 * @method gotoAndStop
	 * @param {String|Number} frameOrAnimation The frame number or animation name that the playhead should move to
	 * and stop.
	 **/
	public function gotoAndStop(frameOrAnimation:Dynamic):Void;

	/**
	 * Advances the playhead. This occurs automatically each tick by default.
	 * @method advance
	*/
	public function advance():Void;
	
}