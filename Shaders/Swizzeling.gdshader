shader_type canvas_item;


void fragment() {
	vec4 pixel_color = texture(TEXTURE, UV);
	
	COLOR = pixel_color;
	COLOR.rgb = COLOR.brg;
}
