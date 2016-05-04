package openfl.display;

import lime.graphics.cairo.CairoImageSurface;
import lime.graphics.GLRenderContext;
import lime.graphics.Image;
import lime.graphics.opengl.GLTexture;

import openfl._internal.renderer.opengl.utils.PingPongTexture;
import openfl.display.BitmapData;
import openfl.display.IBitmapData;

class BitmapSubData implements IBitmapData {

	public var height (get, null):Int;
	public var image (get, null):Image;
	public var isValid (get, null):Bool;
	public var pingPongTexture (get, null):PingPongTexture;
	public var uvData (get, null):TextureUvs;
	public var width (get, null):Int;

	public var bitmapData(default,null):BitmapData;
	public var textureUvs:TextureUvs;

	public function new (bitmapData:BitmapData) {
		this.bitmapData = bitmapData;
		textureUvs = new TextureUvs();
	}

	public function get_height():Int{
		return bitmapData.height;
	}

	public function get_image():Image{
		return bitmapData.image;
	}

	public function get_isValid():Bool{
		return bitmapData.isValid;
	}

	public function get_pingPongTexture():PingPongTexture{
		return bitmapData.pingPongTexture;
	}

	public function get_uvData():TextureUvs{
		if (textureUvs == null) {
			return bitmapData.uvData;
		}
		else {
			return textureUvs; // :TODO: multiply by bitmapData.uvData (e.g. when using POT textures)
		}
	}

	public function get_width():Int{
		return bitmapData.width;
	}

	public function getTexture (gl:GLRenderContext):GLTexture {
		return bitmapData.getTexture(gl);
	}
	public function getSurface ():CairoImageSurface {
		return bitmapData.getSurface();
	}

	private function __sync ():Void {
		@:privateAccess bitmapData.__sync();
	}

}
