package easelhx.filters;
/**
* BoxBlurFilter by Mario Klingemann. March 2, 2011
* Visit http://easeljs.com/ for documentation, updates and examples.
*
*
* Copyright (c) 2011 Mario Klingemann
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
/**
* BoxBlurFilter applies a box blur to DisplayObjects
* @class BoxBlurFilter
* @augments Filter
* @constructor
* @param {Number} blurX
* @param {Number} blurY
* @param {Number} quality
**/
@:native("BoxBlurFilter")
extern class BoxBlurFilter extends Filter
{
	public function new( blurX:Float, blurY:Float, quality:Int):Void;
// public properties:

	/** Horizontal blur radius */
	public var blurX:Float;

	/** Horizontal blur radius */
	public var blurY:Float;

	/** Amount of blur iterations  */
	public var quality:Float;

}