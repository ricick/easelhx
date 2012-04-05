package easelhx.filters;
/*
* ColorFilter by Grant Skinner. Mar 7, 2011
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
* Applies color transforms.
* @class ColorFilter
* @constructor
* @augments Filter
* @param {Number} redMultiplier
* @param {Number} greenMultiplier
* @param {Number} blueMultiplier
* @param {Number} alphaMultiplier
* @param {Number} redOffset
* @param {Number} greenOffset
* @param {Number} blueOffset
* @param {Number} alphaOffset
**/
@:native("ColorFilter")
extern class ColorFilter extends Filter
{
	public function new (redMultiplier:Float, greenMultiplier:Float, blueMultiplier:Float, alphaMultiplier:Float, redOffset:Float, greenOffset:Float, blueOffset:Float, alphaOffset:Float):Void;

// public properties:
	/** Red channel multiplier. */
	public var redMultiplier:Float;
	/** Green channel multiplier. */
	public var greenMultiplier:Float;
	/** Blue channel multiplier. */
	public var blueMultiplier:Float;
	/** Alpha channel multiplier. */
	public var alphaMultiplier:Float;
	/** Red channel offset (added to value). */
	public var redOffset:Float;
	/** Green channel offset (added to value). */
	public var greenOffset:Float;
	/** Blue channel offset (added to value). */
	public var blueOffset:Float;
	/** Alpha channel offset (added to value). */
	public var alphaOffset:Float;

}