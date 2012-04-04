package easelhx.display;
/*
* DOMElement by Grant Skinner. Jul 8, 2011
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
// TODO: fix problems with rotation.
// TODO: exclude from getObjectsUnderPoint

/**
 * <b>This class is still experimental, and more advanced use is likely to be buggy. Please report bugs.</b><br/><br/>
* A DOMElement allows you to associate a HTMLElement with the display list. It will be transformed
* within the DOM as though it is child of the Container it is added to. However, it is not rendered
* to canvas, and as such will retain whatever z-index it has relative to the canvas (ie. it will be
* drawn in front of or behind the canvas).<br/><br/>
* The position of a DOMElement is relative to their parent node in the DOM. It is recommended that
* the DOM Object be added to a div that also contains the canvas so that they share the same position
* on the page.<br/><br/>
* DOMElement is useful for positioning HTML elements over top of canvas content, and for elements
* that you want to display outside the bounds of the canvas. For example, a tooltip with rich HTML
* content.<br/><br/>
* DOMElement instances are not full EaselJS display objects, and do not participate in EaselJS mouse
* events or support methods like hitTest.
* @class DOMElement
* @extends DisplayObject
* @constructor
* @param {HTMLElement} htmlElement A reference or id for the DOM element to manage.
**/

@:native("DOMElement")
extern class DOMElement extends DisplayObject {
	public function new(htmlElement:Dynamic):Void;
// public properties:
	/**
	 * The DOM object to manage.
	 * @property htmlElement
	 * @type HTMLElement
	 **/
	public var htmlElement:Dynamic;
}