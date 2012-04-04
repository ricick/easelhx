package easelhx.utils;
/*
* SpriteSheetUtils by Grant Skinner. Dec 5, 2010
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

// constructor:
/**
* The SpriteSheetUtils class is a collection of static methods for working
* with sprite sheets.  A sprite sheet is a series of images (usually animation frames)
* combined into a single image on a regular grid. For example, an animation consisting
* of 8 100x100 images could be combined into a 400x200 sprite sheet (4 frames across by 2 high).
* The SpriteSheetUtils class uses a static interface and should not be instantiated.
* @class SpriteSheetUtils
* @static
**/

import easelhx.display.SpriteSheet;

@:native("SpriteSheetUtils")
extern class SpriteSheetUtils {
// public static methods:
	/**
	 * <b>This is an experimental method, and is likely to be buggy. Please report issues.</b><br/><br/>
	 * Extends the existing sprite sheet by flipping the original frames either horizontally, vertically, or both,
	 * and adding appropriate animation & frame data.
	 * @method flip
	 * @static
	 * @param {Image} spriteSheet The sprite sheet to use as the source.
	 * @param {Object} flipData A generic object that specifies which frames will be flipped, what to name the
	 * flipped result, and how to flip the frames (horizontally, vertically, or both). Each property name
	 * indicates the name of a new sequence to create, and should reference an array where the first index is
	 * the name of the original sequence to flip, the second index indicates whether to flip it horizontally,
	 * the third index indicates whether to flip it vertically, and the fourth indicates what the "next" value
	 * for the resulting frame data should be. For example, the following would create a new sequence named
	 * "walk_left" consisting of the frames from the original "walk_right" sequence flipped
	 * horizontally: &#123;walk_left: ["walk_right", true, false]&#125;
	 **/
	public static function addFlippedFrames(spriteSheet:SpriteSheet, horizontal:Bool, vertical:Bool, both:Bool):Void;
	/**
	 * Returns a single frame of the specified sprite sheet as a new PNG image.
	 * @method extractFrame
	 * @static
	 * @param {Image} spriteSheet The SpriteSheet instance to extract a frame from.
	 * @param {Number} frame The frame number or animation name to extract. If an animation
	 * name is specified, only the first frame of the animation will be extracted.
	 * @return {Image} a single frame of the specified sprite sheet as a new PNG image.
	*/
	public function extractFrame(spriteSheet:SpriteSheet, frame:Dynamic):Dynamic;
}