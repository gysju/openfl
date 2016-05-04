package openfl.display;

import lime.graphics.cairo.CairoImageSurface;
import lime.graphics.GLRenderContext;
import lime.graphics.Image;
import lime.graphics.opengl.GLTexture;

import openfl._internal.renderer.opengl.utils.PingPongTexture;
import openfl.display.BitmapData;

interface IBitmapData {

	public var height (get, null):Int;
	public var image (get, null):Image;
	public var isValid (get, null):Bool;
	public var pingPongTexture (get, null):PingPongTexture;
	public var uvData (get, null):TextureUvs;
	public var width (get, null):Int;

	public function getTexture (gl:GLRenderContext):GLTexture;
	public function getSurface ():CairoImageSurface;

	private function __sync ():Void;

}
