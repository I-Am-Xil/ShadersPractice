shader_type canvas_item;

uniform vec4 color : source_color;

void fragment() {
	vec4 pixel_color = texture(TEXTURE, UV);
	float brightness = (pixel_color.r + pixel_color.g + pixel_color.b) / 3.0;
	vec4 grayScale = vec4(brightness, brightness, brightness, pixel_color.a);
	COLOR = grayScale * color; 
}
