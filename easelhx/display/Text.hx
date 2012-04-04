package easelhx.display;
/*
* Text by Grant Skinner. Dec 5, 2010
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
* Allows you to display one or more lines of dynamic text (not user editable) in the display list.
* Line wrapping support (using the lineWidth is very basic, wrapping on spaces and tabs only. Note
* that as an alternative to Text, you can position HTML text above or below the canvas relative to 
* items in the display list using the localToGlobal() method.
* @class Text
* @extends DisplayObject
* @constructor
* @param {String} text Optional. The text to display.
* @param {String} font Optional. The font style to use. Any valid value for the CSS font attribute is 
* acceptable (ex. "36px bold Arial").
* @param {String} color Optional. The color to draw the text in. Any valid value for the CSS color attribute
* is acceptable (ex. "#F00").
**/
@:native("Text")
extern class Text extends DisplayObject {
	
	public function new(text:String, font:String, color:String):Void;
// public properties:
	/**
	 * The text to display.
	 * @property text
	 * @type String
	 **/
	public var text:String;
	
	/**
	 * The font style to use. Any valid value for the CSS font attribute is acceptable (ex. "bold 36px Arial"). 
	 * @property font
	 * @type String
	 **/
	public var font:String;
	
	/**
	 * The color to draw the text in. Any valid value for the CSS color attribute is acceptable (ex. "#F00").
	 * @property color
	 * @type String
	 **/
	public var color:String;
	
	/**
	 * The horizontal text alignment. Any of "start", "end", "left", "right", and "center". For detailed 
	 * information view the 
	 * <a href="http://www.whatwg.org/specs/web-apps/current-work/multipage/the-canvas-element.html#text-0">
	 * whatwg spec</a>.
	 * @property textAlign
	 * @type String
	 **/
	public var textAlign:String;
	
	/** The vertical alignment point on the font. Any of "top", "hanging", "middle", "alphabetic", 
	 * "ideographic", or "bottom". For detailed information view the 
	 * <a href="http://www.whatwg.org/specs/web-apps/current-work/multipage/the-canvas-element.html#text-0">
	 * whatwg spec</a>.
	 * @property textBaseline
	 * @type String
	*/
	public var textBaseline:String;
	
	/** The maximum width to draw the text. If maxWidth is specified (not null), the text will be condensed or 
	 * shrunk to make it fit in this width. For detailed information view the 
	 * <a href="http://www.whatwg.org/specs/web-apps/current-work/multipage/the-canvas-element.html#text-0">
	 * whatwg spec</a>.
	 * @property maxWidth
	 * @type Number
	*/
	public var maxWidth:Float;
	
	/** If true, the text will be drawn as a stroke (outline). If false, the text will be drawn as a fill.
	 * @property outline
	 * @type Boolean
	 **/
	public var outline:Bool;
	
	/** Indicates the line height (vertical distance between baselines) for multi-line text. If null, 
	 * the value of getMeasuredLineHeight is used.
	 * @property lineHeight
	 * @type Number
	 **/
	public var lineHeight:Float;
	
	/**
	 * Indicates the maximum width for a line of text before it is wrapped to multiple lines. If null, 
	 * the text will not be wrapped.
	 * @property lineWidth
	 * @type Number
	 **/
	public var lineWidth:Float;
	
	/**
	 * Returns the measured, untransformed width of the text.
	 * @method getMeasuredWidth
	 * @return {Number} The measured, untransformed width of the text.
	 **/
	public function getMeasuredWidth():Float;

	/**
	 * Returns an approximate line height of the text, ignoring the lineHeight property. This is based 
	 * on the measured width of a "M" character multiplied by 1.2, which approximates em for most fonts.
	 * @method getMeasuredLineHeight
	 * @return {Number} an approximate line height of the text, ignoring the lineHeight property. This is 
	 * based on the measured width of a "M" character multiplied by 1.2, which approximates em for most fonts.
	 **/
	public function getMeasuredLineHeight():Float;
}